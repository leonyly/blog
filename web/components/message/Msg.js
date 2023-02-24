import React, { useState,useContext } from "react";
import style from "./msg.module.scss";
import Image from "next/image";
import avatarImg from './avatar.png'
import Api from '/http/api'
import { message } from "antd";
import useUserService from "/hooks/useUser";

function Msg() {
  const userService = useUserService();
  const [content, setContent] = useState("");
  const user = userService.user;

	async function submit() {
		// if (!this.content) {
		// 	this.$message.warning("请填写留言信息哦😊😊～");
		// 	return;
		// }
		// const { avatar, email, username } = this.userInfo;
		// if (!username) {
		// 	this.$message.warning("请先登录再留言哦😊😊～");
		// 	this.$store.commit("login/setShow", true);
		// 	return;
		// }
		if (!user.username) {
			userService.showLogin()
			return;
		}
		let params = {
			avatar: '',
			content,
			email: user.email,
			username: user.username
		};
		await Api.createMessage(params).then(res => {
			setContent('')
			message.success("留言成功，等待管理员审核留言😊");
		});
	}

  return (
    <div class={style.msg}>
      <div class="msg_head">
        <h3 class="h3mes">留言板</h3>
      </div>
      <div class="form-content">
        <div class="avatar-info">
          {user.avatar ? (
            <img class="avatar" src={user.avatar} />
          ) : (
						<Image class="avatar pointer" src={avatarImg} onClick="login"/>
          )}
          <div class="nickname">{user.username || "快来留个言～"}</div>
          {!user.username && <div class="tips">(点击头像登录)</div>}
        </div>
        <div class="form">
          <div class="text">
            <textarea
              value={content}
              onChange={(e) => {
                setContent(e.target.value);
              }}
              class="textarea"
              rows="5"
            ></textarea>
          </div>
          <div class="emoji-btn">
            <div
              class={`submit dc pointer ${!content ? "disabled" : ""}`}
              onClick={submit}
            >
              发布
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Msg;
