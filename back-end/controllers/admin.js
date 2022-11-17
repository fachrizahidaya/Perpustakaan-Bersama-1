const db = require("../models");
const admin = db.Admin;
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const transporter = require("../helpers/transporter");

module.exports = {
  login: async (req, res) => {
    try {
      const { username, password } = req.body;

      const isUserExist = await user.findOne({
        where: {
          username: username ? username : "",
        },
        raw: true,
      });
      // console.log(isUserExist)

      if (!isUserExist) throw "User not found";

      const payload = { username: isUserExist.username };
      const token = jwt.sign(payload, "jcwd2204");
      // console.log(token)

      const isValid = await bcrypt.compare(password, isUserExist.password);

      if (!isValid) throw `Wrong password`;

      res.status(200).send({
        message: "Login Succes",
        isUserExist,
        token,
      });
    } catch (err) {
      console.log(err);
      res.status(400).send(err);
    }
  },

  keepLogin: async (req, res) => {
    try {
        
        const verify = jwt.verify(req.token, "jcwd2204");
        // console.log(verify);
        const result = await user.findOne({
            where: {
                username: verify.username,
            },
            raw: true,
        });
        
        const isProflieExist = await db.Profile.findOne({
            where: {
                UserNIM: result.NIM
            },
            raw: true,
        });

        result.profilePic = isProflieExist.profilePic
        // console.log(result)
        
        res.status(200).send(result);
        } catch (err) {
        res.status(400).send(err);
    }
  },
};
