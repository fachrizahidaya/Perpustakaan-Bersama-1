const router = require("express").Router()
const {admin} = require("../controllers/index")
const {verifyToken, checkRole} = require("../middleware/auth")

module.exports = router