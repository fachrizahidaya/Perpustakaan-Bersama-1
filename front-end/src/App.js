import HomePage from "./pages/HomePage";
import { Route, Routes } from "react-router-dom";
import Axios from "axios";
import { useDispatch, useSelector } from "react-redux";
import { useEffect } from "react";
import "./index.css";
import { login } from "./redux/userSlice";
import NavbarComp from "./components/NavbarComp";
import "./App.css";
import { AdminPage } from "./pages/AdminPage";
import { VerificationPage } from "./pages/verificationPage";
import DetailPage from "./pages/DetailPage";
import { AdminDashboard } from "./pages/AdminDashboard";

function App() {
  const dispatch = useDispatch();
  const token = localStorage.getItem("token");
  const { NIM } = useSelector((state) => state.userSlice.value);
  console.log(NIM)

  const keepLogin = async () => {
    try {
      const res = await Axios.get(`http://localhost:2000/user/keepLogin`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      dispatch(
        login({
          NIM: res.data.NIM,
          username: res.data.username,
          email: res.data.email,
        })
      );
      dispatch(
        login({
          NIM: res.data.NIM,
          username: res.data.username,
          email: res.data.email,
          isVerified: res.data.isVerified,
        })
      );
    } catch (err) {
      console.log(err);
    }
  };

  const keepLoginAdmin = async () => {
    try {
      const res = await Axios.get(`http://localhost:2000/admin/keepLogin`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      dispatch(
        login({
          username: res.data.username,
        })
      );
      dispatch(
        login({
          username: res.data.username,
          isVerified: res.data.isVerified,
        })
      );
    } catch (err) {
      console.log(err);
    }
  };

  useEffect(() => {
    NIM === 0 ? keepLogin() : keepLoginAdmin();
  });

  return (
    <div>
      <Routes>
        <Route
          path="/"
          element={
            <>
              <NavbarComp />
              <HomePage />
            </>
          }
        />
        <Route path="/admin" element={<AdminPage />} />
        <Route path="/dashboard" element={<AdminDashboard />} />
        <Route path="/verification/:token" element={<VerificationPage />} />
        <Route path="/detail/:id" element={<DetailPage />} />
      </Routes>
    </div>
  );
}

export default App;
