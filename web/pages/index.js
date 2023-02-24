import style from "/styles/home.module.scss";
import { useRef } from "react";
import Head from "next/head";
import Image from "next/image";
import Link from "next/link";
import Api from "../http/api";
import Axios from "axios";
import Layout from "../Layout";
import ArticleItem from "../components/ArticleItem";
import footImg from "../images/1.gif";
// import {userInfo} from '/utils/userInfo'
// import { useLocalStorageState } from 'ahooks';

function Home(res) {
  // const [userInfo, setUserInfo, removeUserInfo] = useLocalStorage('userInfo', {username: 'admin'});
  // const [userInfo, setUserInfo] = useLocalStorageState('userInfo', {
  // 	defaultValue: {},
  // });
  const contentRef = useRef(null);
  const downPage = () => {
    console.log(contentRef);
    document.body.scrollTo({
      top: contentRef.current.offsetTop - 135,
      behavior: "smooth",
    });
  };

  const list = res.data.data;
  return (
    <>
      <Head>
        <title>Create Next App</title>
        <meta name="description" content="Generated by create next app" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <Layout>
        <div className={style.home}>
          <div className="bgImg" id="header">
            <div className="bg_left">
              <div className="ball"></div>
              <div className="shadow"></div>
            </div>
            <div className="hollow">Leon博客</div>
            <div className="bg_right">
              <div className="ball"></div>
              <div className="shadow"></div>
            </div>
            <div className="arrow-down">
              <i className="iconfont icon-down" onClick={downPage}></i>
            </div>
          </div>
          <div className="arttitle">
            <i className="iconfont icon-shuye"></i>
            <span>热门文章</span>
          </div>
          <div className="container" ref={contentRef}>
            <div className="user-info">
              <div>
                {list.map((item, index) => (
                  <ArticleItem key={index} item={item}></ArticleItem>
                ))}
              </div>
              {/* <div className="right">
                <userinfo></userinfo>
              </div> */}
            </div>
          </div>
          <div>
            <div
              style={{
                marginTop: "20px",
                display: "flex",
                justifyContent: "center",
              }}
            >
              <Link href="/article">
                <Image
                  onClick="goArticle"
                  src={footImg}
                  alt=""
                  className="home_foot"
                />
              </Link>
            </div>
          </div>
        </div>
      </Layout>
    </>
  );
}

Home.getInitialProps = async () => {
  // const res = await Axios.get('http://localhost:5454/api/article/webhotlist?pageIndex=1&pageSize=4&author=admin')
  const res = await Api.getHotArticleList();
  console.log(res);
  // const res = await Api.getHotArticleList()
  // return {a: 1}
  return res;
};

export default Home;
