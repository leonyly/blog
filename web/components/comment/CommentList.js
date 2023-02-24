import { List } from "antd";
import React, { useContext, useState } from "react";
import { UserService } from "/hooks/useUser";
import { timeStampFormat } from "../../utils";
import WriteComment from "./WriteComment";
import style from "./CommentList.module.scss";
import Api from "../../http/api";

export default function CommentList({ list, aid, handleRefresh }) {
  const userService = useContext(UserService);
  const [pid, setPid] = useState(0);
  const [show, setShow] = useState(false);

  const commit = (params) => {
    console.log({
      ...params,
      aid: aid,
      username: userService.user.username,
      pid: pid || 0,
    });
    Api.createArticleComment({
      ...params,
      aid: aid,
      username: userService.user.username,
			email: userService.user.email,
      pid: pid || 0,
    }).then((res) => {
      console.log("评论成功", res);
      handleCommit();
    });
  };

  return (
    <div class={style.module}>
      <ul class="ul">
        {list.map((item, index) => (
					<CommentItem item={item} key={item.id} pid={pid} aid={aid} setPid={setPid} handleRefresh={handleRefresh}/>
        ))}
      </ul>
    </div>
  );
}

function CommentItem({item, setPid, handleRefresh, pid, aid}) {
	const userService = useContext(UserService);
	const [show, setShow] = useState(false)

	const getSubComments = (item) => (
    <ul>
      {item.articleComments.map((code) => (
        <li key={code.id}>
          <div class="li-item">
            <img class="img" src={code.avatar} alt="" />
            <div class="top">
              <div class="nickanme">
                <span class="fw">{code.username}</span>
                <span> 回复 {code.answer}: </span>
                <div class="replycontent">{code.content}</div>
              </div>
              <div class="value">{timeStampFormat(code.createdAt)}</div>
              {/* {code.articleComments && code.articleComments.length && getSubComments(code)} */}
            </div>
          </div>
        </li>
      ))}
    </ul>
  );
	
  return (
    <li class="li" key={item.id}>
      <div class="li-item">
        <img class="img" src={item.avatar} />
        <div class="top">
          <div class="fw username">{item.username}</div>
          <div class="content">{item.content}</div>
          <div class="value">
            {timeStampFormat(item.createdAt)}

            {userService.user.username ? (
              <span
                class="callback pointer"
                onClick={() => {
                  setPid(item.id);
                  setShow(true);
                }}
              >
                回复
              </span>
            ) : (
              <span class="callback pointer" onClick={userService.showLogin}>
                登录
              </span>
            )}
          </div>
          {getSubComments(item)}
        </div>
      </div>
      {show ? (
        <div style={{ paddingLeft: "30px" }}>
          <WriteComment handleRefresh={handleRefresh} aid={aid} pid={pid} />
        </div>
      ) : null}
    </li>
  );
}
