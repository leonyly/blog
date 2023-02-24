import Link from "next/link";
import Image from "next/image";
import React from "react";
import logo from "../../images/logo.png";
import { useEffect, useState, useContext } from "react";
import style from "./header.module.scss";
import { UserService } from "/hooks/useUser";
import { Avatar, Button, Divider, List, Popover, Typography } from "antd";
import { EditOutlined, UserOutlined } from "@ant-design/icons";
import { useRouter } from "next/router";

// import { useLocalStorageState } from "ahooks";

const nav = [
  {
    name: "首页",
    path: "/",
    icon: "icon-shouye",
  },
  {
    name: "文章",
    path: "/article",
    icon: "icon-biaoqian",
  },
  {
    name: "归档",
    path: "/archive",
    icon: "icon-iconset0124",
  },
  {
    name: "留言",
    path: "/message",
    icon: "icon-liuyan",
  },
  {
    name: "导航",
    path: "/nav",
    icon: "icon-daohang",
  },
  {
    name: "关于本站",
    path: "/about",
    icon: "icon-guanyu",
  },
];

function backHead() {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  });
}

export default function MyHeader() {
  const userService = useContext(UserService);
	const Router = useRouter();
  // const [userInfo, setUserInfo, removeUserInfo] = useLocalStorage('userInfo', {});
  // const [userInfo, setUserInfo] = useLocalStorageState("userInfo", {
  //   defaultValue: {},
  // });
  const [isScrolling, setIsScrolling] = useState(false);
  const ajustNavigation = () => {
    let scrollTop =
      window.pageYOffset ||
      document.documentElement.scrollTop ||
      document.body.scrollTop ||
      0;
    setIsScrolling(scrollTop > 0);
  };
  useEffect(() => {
    window.addEventListener("scroll", ajustNavigation);
    return () => {
      window.removeEventListener("scroll", ajustNavigation);
    };
  }, []);

	const toWrite = () => {
		if (userService.user.username) {
			Router.push('/edit')
		} else {
			userService.showLogin();
		}
	}

  return (
    <div className={style.myheader}>
      <header>
        <div className="layout">
          <nav className="indigo">
            <Image src={logo} width="200px" className="brand-logo" alt="logo" />
            <div className="brand-menu">
              <ul className="nav-ul">
                {nav.map((item, index) => (
                  <Link href={item.path} key={index}>
                    <li class="nav-li pointer">
                      <div className="title">
                        <i className={`${item.icon} iconfont`}></i>
                        &nbsp;{item.name}
                      </div>
                    </li>
                  </Link>
                ))}
								{/* <Link href={'/edit'}> */}

                    <li onClick={toWrite} class="nav-li pointer">
                      <div className="title">
												<EditOutlined />
                        &nbsp;写文章
                      </div>
                    </li>
                  {/* </Link> */}
                {!userService.user.username ? (
                  <li className="nav-li pointer" onClick={userService.showLogin}>
                    登录
                  </li>
                ) : (
                  <li className="nav-li user pointer">
                    <Popover
                      content={
                        <>
                          <div>
                            <div
                              style={{
                                lineHeight: "30px",
                                textAlign: "center",
                                cursor: "pointer",
                              }}
                              onClick={userService.logout}
                            >
                              登出
                            </div>
                          </div>
                        </>
                      }
                    >
                      <Avatar size={24} icon={<UserOutlined />} />
                      <span style={{ marginLeft: "5px" }}>
                        {userService.user.username}
                      </span>
                    </Popover>
                  </li>
                )}
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <a
        href="javascript:;"
        onClick={backHead}
        className={`cd-top ${isScrolling ? "cd-is-visible" : ""}`}
      ></a>
    </div>
  );
}
