import style from "/styles/article.module.scss";
import Link from "next/link";
import Image from "next/image";
import Api from "../http/api";
import ArticleItem from "../components/ArticleItem";
import Layout from "../Layout";
import SearchInput from "../components/SearchInput";
import { Breadcrumb, Empty, Pagination } from "antd";
import { useState, useEffect, useContext } from "react";
import loadingImg from "/images/loading.gif";
import { UserService } from "/hooks/useUser";

const getList = async (params) => {
  const {
    data: { count: totalCount = 0, data: list = [] },
  } = await Api.getArticleList(params);

  // const {
  //   data: { data: hotlist },
  // } = await Api.getHotArticleList();

  // const { data: categoryList } = await Api.getAllCategory();

  return {
    totalCount,
    list,
    // hotlist,
    // categoryList,
  };
};

function Blog({ hotlist, categoryList }) {
  const userService = useContext(UserService);
  const [pageIndex, setPageNumber] = useState(1);
  const [keyword, setKeyword] = useState("");
  const [categoryId, setCategoryId] = useState(undefined);
  const [totalCount, setTotalCount] = useState(0);
  const [list, setList] = useState([]);
  // const [hotlist, setHotList] = useState([]);
  // const [categoryList, setCategoryList] = useState([]);
  const [loading, setLoading] = useState(false);
  const [all, setAll] = useState(false);
  const username = userService.user.username;

  const fetchData = () => {
    setLoading(true);
    const params = { pageIndex, keyword, pageSize: 5, is_del: 0 };
    if (!all) {
      params.author = username;
    }
    if (categoryId) {
      params.categoryId = categoryId;
    }
    getList(params).then(({ totalCount, list }) => {
      setTotalCount(totalCount);
      setList(list);
      setLoading(false);
    });
  };

  const filterData = (item) => {
    setCategoryId(item && item.id);
  };

  useEffect(() => {
    fetchData();
  }, [categoryId, pageIndex, keyword, all]);

  return (
    <Layout>
      <div className={`${style.articles} container`}>
        <div className="blog">
          <Breadcrumb style={{ marginTop: 20 }}>
            <Breadcrumb.Item
              onClick={() => {
                setAll(true);
              }}
            >
              <a>全部</a>
            </Breadcrumb.Item>
            {username ? (
              <Breadcrumb.Item
                onClick={() => {
                  setAll(false);
                }}
              >
                <a>我的</a>
              </Breadcrumb.Item>
            ) : null}
          </Breadcrumb>
          {loading ? (
            <div className="loading">
              <Image src={loadingImg} />
            </div>
          ) : !list.length ? (
            <Empty className="loading" description="客官，啥都不剩了" />
          ) : (
            list.map((item, index) => (
              <ArticleItem key={index} item={item}></ArticleItem>
            ))
          )}
          <div className="paginate">
            <Pagination
              showQuickJumper
              defaultCurrent={1}
              pageSize={5}
              total={totalCount}
              onChange={(pageIndex) => {
                setPageNumber(pageIndex);
                // fetchData();
              }}
            />
          </div>
        </div>
        <div className="category">
          <div className="aside-box">
            <SearchInput
              value={keyword}
              onChange={(e) => setKeyword(e.target.value)}
              onSearch={() => {
                console.log("search", keyword);
                // fetchData();
              }}
            />
            <ul className="tag-box">
              {categoryList.map((item) => (
                <li
                  className="pointer tag-item"
                  onClick={() => filterData(item)}
                  key={item.id}
                >
                  {item.name}
                </li>
              ))}
              <li className="pointer tag-item" onClick={() => filterData()}>
                全部分类
              </li>
            </ul>
          </div>
          {hotlist.length && (
            <div className="aside-box">
              <h3 className="aside-title">热门文章</h3>
              <ul className="aside-content">
                {hotlist.map((item) => (
                  <Link href={`/detail/${item.id}`} key={item.id}>
                    <li className="aside-item-article pointer">
                      <div className="aside-name">{item.title}</div>
                      <div className="aside-count">阅读量： {item.browser}</div>
                    </li>
                  </Link>
                ))}
              </ul>
            </div>
          )}
        </div>
      </div>
    </Layout>
  );
}

export async function getServerSideProps() {
  const {
    data: { data: hotlist },
  } = await Api.getHotArticleList();

  const { data: categoryList } = await Api.getAllCategory();

  return {
    props: {
      hotlist,
      categoryList,
    },
  };
}

export default Blog;
