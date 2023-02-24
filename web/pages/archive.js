import Api from "../http/api";
import { useState, useRef, useContext, useEffect } from "react";
import Layout from "../Layout";
import style from "/styles/archive.module.scss";
import Link from "next/link";
import { UserService } from "/hooks/useUser";
import { Breadcrumb, Empty } from "antd";

function fmtMonDay(n) {
  const time = new Date(n);
  const Day = time.getDate();
  return `${Day}号`;
}

function archive() {
  const userService = useContext(UserService);

  const [currentIndex, setCurrentIndex] = useState(0);
  const contentRef = useRef(null);

  const [model, setModel] = useState([]);
  const [all, setAll] = useState(false);
  const username = userService.user.username;

  useEffect(() => {
    const params = {};
    if (!all) {
      params.author = username;
    }
    Api.getArchive(params).then((res) => {
      console.log(res);
      setModel(res.data);
    });
  }, [all]);

  const computeStype = (index) => {
    if (index < currentIndex) {
      return {
        height: 0,
        opacity: 0,
      };
    }
    return {};
  };

  const changeIndex = (index) => {
    setCurrentIndex(index);
    // const content = contentRef.content;
    // let conHei = 0;
    // if (index > currentIndex) {
    //   for (let i = 0; i < index; i++) {
    //     conHei += content[i].offsetHeight;
    //     content[i].style.opacity = 0;
    //   }
    //   for (let i = index; i < content.length; i++) {
    //     content[i].style.top = `-${conHei}px`;
    //   }
    // }
    // if (index < currentIndex) {
    //   for (let i = index; i < currentIndex; i++) {
    //     content[i].style.opacity = 1;
    //   }
    //   for (let i = 0; i < index; i++) {
    //     conHei += content[i].offsetHeight;
    //   }
    //   for (let i = index; i < content.length; i++) {
    //     content[i].style.top = `-${conHei}px`;
    //   }
    // }
  };

  return (
    <Layout>
      <div class={style.box}>
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
        <div className="box_wrap">
          <ul class="event_year">
            {Object.keys(model).map((key, index) => (
              <li
                key={key}
                className={index === currentIndex ? "current" : ""}
                onClick={() => changeIndex(index)}
              >
                {key}
              </li>
            ))}
          </ul>

          <div class="event_list">
            {Object.keys(model).map((key, index) => (
              <div
                ref={contentRef}
                key={index}
                class="disnone"
                style={computeStype(index)}
              >
                <h3>{key}</h3>
                <ul>
                  {model[key].map((item) => (
                    <Link href={`/detail/${item.id}`}>
                      <li key={item.id} class="hand">
                        <span>{fmtMonDay(item.createdAt)}</span>
                        <p>
                          <span>{item.title}</span>
                        </p>
                      </li>
                    </Link>
                  ))}
                </ul>
              </div>
            ))}
            {!Object.keys(model).length ? (
              <Empty className="loading" description="客官，啥都没有" />
            ) : null}
          </div>
        </div>
      </div>
    </Layout>
  );
}

export default archive;
