import style from "./msgList.module.scss";
import Image from "next/image";
import avatarImg from "./avatar.png";
import { Avatar } from "antd";
import { UserOutlined } from "@ant-design/icons";

function timeStampFormat(a) {
  return a;
}

function MsgList({ list, totalPages }) {
  console.log(arguments);
  const pageIndex = 1;
  return (
    <div className={style.msgList}>
      <ul className="ul">
        {list.map((item, index) => (
          <li className="li" key={item.id}>
            <div className="li-item">
              {item.avatar ? (
                <img className="img" src={item.avatar} alt="" />
              ) : (
								<Avatar size={28} icon={<UserOutlined />}/>
              )}
              <div className="top">
                <div className="fw username">{item.username}</div>
                <div className="content">{item.content}</div>
                <div className="value">{timeStampFormat(item.createdAt)}</div>
                <ul>
                  {item.messages.map((code) => (
                    <li key={code.id}>
                      <div className="li-item">
                        {code.avatar ? (
                          <img className="img" src={code.avatar} alt="" />
                        ) : (
                          <Image class="img pointer" src={avatarImg} />
                        )}
                        <div className="top">
                          <div className="nickanme">
                            <span className="fw">{code.username}</span>
                            <span> 回复 {code.answer}: </span>
                            <div className="replycontent">{code.content}</div>
                          </div>
                          <div className="value">
                            {timeStampFormat(code.createdAt)}
                          </div>
                        </div>
                      </div>
                    </li>
                  ))}
                </ul>
              </div>
            </div>
          </li>
        ))}
      </ul>
      {/* <div className="loadText">
        <div
          // ref="load"
          className={{ pointer: pageIndex < totalPages }}
          onClick="loadMore"
        >
          {pageIndex >= totalPages ? "没有更多了" : "加载更多"}
        </div>
      </div> */}
    </div>
  );
}

export default MsgList;
