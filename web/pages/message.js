import Msg from "/components/message/Msg";
import MsgList from "/components/message/MsgList";
import Api from "../http/api";
import { useState, useEffect } from "react";
import style from "/styles/message.module.scss";
import Layout from "../Layout";

function Message() {
  const [msgList, setMsgList] = useState([]);
  const [totalPages, setTotalPages] = useState(0);

  async function getMessageList(
    params = {
      pageIndex: 1,
      pageSize: 5,
    }
  ) {
    Api.getMessageList(params).then((res) => {
      console.log(res);
      setTotalPages(res.totalPages);
      setMsgList(res.data.data);
    });
  }
  useEffect(() => {
    getMessageList();
  }, []);
	
  return (
    <Layout>
      <div className={style.module}>
        <div class="container">
          <div class="message">
            <Msg />
          </div>
          <div class="message_foot">
            <div class="content">
              <div class="con_head">Message</div>
              <div class="con_tit">
                <span class="con_tit_l">#</span>
                <span class="con_tit_r">留言前需知</span>
              </div>
              <div class="con_list">
                <p>• 烦请各位大佬留言时填写自己的真实邮件</p>
                <p>• 留言我基本都会回复，并会以邮件通知您</p>
              </div>
              <p class="con_mes">希望能向Leon提出好的建议。 ^_^</p>
            </div>
          </div>
          <div class="app-timeline">
            <MsgList list={msgList} totalPages={totalPages} />
          </div>
        </div>
      </div>
    </Layout>
  );
}

// export async function getServerSideProps() {
//   let params = {
//     pageIndex: 1,
//     pageSize: 5,
//   };
//   const {
//     data,
//   } = Api.getMessageList(params);
// 	console.log(data);
//   return {
//     props: {
//       totalPages: 0,
//       data: [],
//     },
//   };
// }

export default Message;
