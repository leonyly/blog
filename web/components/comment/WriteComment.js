import { UserOutlined } from "@ant-design/icons";
import { Avatar } from "antd";
import React, { useState, useContext } from "react";
import Api from "../../http/api";
import style from "./writeComment.module.scss";
import { UserService } from "/hooks/useUser";
// import Image from "next/image";
// import avatarImg from "./avatar.png";
import { message } from 'antd';

const userInfo = {
  avatar: undefined,
  email: undefined,
  url: undefined,
  username: undefined,
};

export default function WriteComment({ handleRefresh, aid, pid}) {
  const userService = useContext(UserService);
  const [content, setContent] = useState("");

  const submit = () => {
		Api.createArticleComment({
			content,
			aid: aid,
      username: userService.user.username,
      email: userService.user.email,
			pid: pid || 0
    }).then(res => {
			console.log('评论成功',res);
			handleRefresh()
			message.success('评论成功!')
		});
  };
	
  return (
    <div class={style.write}>
      {userInfo.avatar ? (
        <img class="avatar" src={userInfo.avatar} />
      ) : (
        <div>
          {/* <Avatar size={45} icon={<UserOutlined />} onClick="login"/> */}
          {/* <Image class="avatar" width={45} height={45} src={avatarImg} onClick="login" /> */}
        </div>
      )}
      <div class="input">
        <textarea
          value={content}
          onChange={(e) => {
            setContent(e.target.value);
          }}
          class="textarea"
          rows="10"
          cols="30"
          placeholder={"各位拔刀吧🔪🔪🔪"}
        ></textarea>
        <div class="bottom">
          {userService.user.username ? (
            <div class="submit pointer" onClick={submit}>
              提交
            </div>
          ) : (
            <div class="submit pointer" onClick={userService.showLogin}>
              登录
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
