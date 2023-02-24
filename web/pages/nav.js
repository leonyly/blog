import { useEffect, useState } from "react";
import style from "/styles/nav.module.scss";
import Api from "../http/api";
import Layout from "../Layout";
import { Card } from "antd";
import Link from "next/link";

function nav({}) {
  const [model, setModel] = useState([]);

  const getnavList = async () => {
    const res = await Api.getnavList();
    setModel(res.data);
  };

  useEffect(() => {
    getnavList();
  }, []);

  const scrollItem = (anchorName) => {
    // 找到锚点
    let anchorElement = document.getElementById(anchorName);
    const H = anchorElement.offsetTop - 140;
    if (anchorElement) {
      document.body.scrollTo({
        top: H,
        behavior: "smooth",
      });
    }
  };

  return (
    <Layout>
      <div class={style.nav}>
        <div class="navhead">
          <div class="post-tags">
            {model.map((item) => (
              <a key={item.id} onClick={() => scrollItem(item.id)}>
                {item.name}
              </a>
            ))}
          </div>
        </div>
        <div class="container archive-page">
          {model.map((item) => (
            <div id={item.id} key={item.id} class="anchor">
              <div>
                <div class="categorys-title">{item.name}</div>

                {item.navitems.map((tag) => (
                  <div key={tag.id} class="post-list-item">
                    <Link href={tag.url}>
                      <div class="tourl">
                        <Card
                          title={
                            <div class="clearfix card-head">
                              <img class="urlicon" src={tag.icon} alt="" />
                              <span class="urltitle">{tag.title}</span>
                            </div>
                          }
                        >
                          <span class="urlbody">{tag.desc}</span>
                        </Card>
                      </div>
                    </Link>
                  </div>
                ))}
              </div>
            </div>
          ))}
        </div>
      </div>
    </Layout>
  );
}

export async function getStaticProps() {
  return {
    props: {},
  };
}

export default nav;
