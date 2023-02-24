import Layout from "../../Layout";
import { useRouter } from "next/router";
import { useState } from "react";
import Api from "../../http/api";
import { remark } from "remark";
import html from "remark-html";
import style from "/styles/detail.module.scss";
import MsgList from "/components/message/MsgList";
import WriteComment from "../../components/comment/WriteComment";
import CommentList from "../../components/comment/CommentList";

async function getPostData(id) {
  const { data: matterResult } = await Api.getArticleDetail({ id });

  // Use remark to convert markdown into HTML string
  const processedContent = await remark()
    .use(html)
    .process(matterResult.content);
  const contentHtml = processedContent.toString();

  // Combine the data with the id and contentHtml
  return {
    id,
    contentHtml,
    ...matterResult.data,
  };
}

async function getArticleCommentList(id) {
  const res = await Api.getArticleCommentList({
    id,
  });
  return res.data || [];
}

function Blog({ detail, id }) {
  const [commentList, setCommentList] = useState([]);
  useState(() => {
    getArticleCommentList(id).then((articleCommentList) => {
      console.log(articleCommentList);
      setCommentList(articleCommentList);
    });
  }, []);
  const handleRefresh = () => {
    getArticleCommentList(id).then((articleCommentList) => {
      console.log(articleCommentList);
      setCommentList(articleCommentList);
    });
  };

  return (
    <Layout>
      <div className={style.detail}>
        <div className="content layout">
          <div className="article">
            <div className="wapper" id="wapper">
              {/* {detail.content} */}
              <div
                className="markdown-body"
                dangerouslySetInnerHTML={{ __html: detail.contentHtml }}
              />
              {/* <mavon-editor
            ref="editor"
            :value="content"
            :subfield="false"
            :defaultOpen="'preview'"
            :toolbarsFlag="false"
            :editable="false"
            :scrollStyle="true"
            :ishljs="true"
          >
          </mavon-editor> */}
              {/* <!--
            :value="content"：引入要转换的内容
            :subfield = "false"：开启单栏模式
            :defaultOpen = "'preview'"：默认展示预览区域
            :toolbarsFlag = "false"：关闭工具栏
            :editable="false"：不允许编辑
            scrollStyle="true"：开启滚动条样式(暂时仅支持chrome)
            :ishljs = "true"：开启代码高亮
          --> */}
            </div>
            {/* <div class="tree">
              <div class="nav">
                {nav.map((item) => (
                  <div class="list pointer" key={item.id}>
                    <a class="li-a" click="_scrollTo(item.id)">
                      {item.name}
                    </a>
                    <ul>
                      {item.list.map((code, codeindex) => {
                        <li
                          class="code-li"
                          click="_scrollTo(code.id)"
                          key={codeindex}
                        >
                          <a>{code.name}</a>
                        </li>;
                      })}
                    </ul>
                  </div>
                ))}
              </div>
            </div>

            <div class="comment">
              <write cparams="cparams"></write>
              <div class="line"></div>
              <commentlist id={id}></commentlist>
            </div> */}

            <div class="comment">
              <WriteComment aid={id} handleRefresh={handleRefresh} />
              <div class="line"></div>
              {/* <MsgList aid="aid" list={commentList}></MsgList> */}
              <CommentList
                list={commentList}
                aid={id}
                handleRefresh={handleRefresh}
              />
            </div>
          </div>
        </div>
      </div>
    </Layout>
  );
}

export async function getServerSideProps(context) {
  console.log(context);
  const { id } = context.query;
  console.log("id", id);
  const postData = await getPostData(id);

  // content = data.content;

  return {
    props: {
      detail: postData,
      id,
    },
  };
}

export default Blog;
