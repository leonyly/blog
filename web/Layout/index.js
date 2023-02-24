import React, { useContext, useEffect } from "react";
import Login from "../components/Login";
import MyFooter from "../components/MyFooter";
import MyHeader from "../components/MyHeader";
import { UserService } from "/hooks/useUser";

export default function Layout({ children }) {
  const userService = useContext(UserService);

  return (
    <div className="mylayout">
      <MyHeader />
      <div class="app-content">{children}</div>
      <MyFooter />
      {userService.isLoginShow ? <Login /> : ""}
    </div>
  );
}
