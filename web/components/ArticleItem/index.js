import React from "react";
import Link from "next/link";
import style from "/styles/articleItem.module.scss";
export default function ArticleItem({ item }) {
  console.log(item.createdAt);
  return (
    <section class={style["article-item"]}>
      <div class="head">
        {item.browser > 99 && <div class="fc-flag">热门</div>}
        <Link href={`/detail/${item.id}`}>
          <a>
            <h5 class="title">
              <span class="text-blue-1">{item.title}</span>
            </h5>
          </a>
        </Link>
        <div class="time">
          <span class="day">{new Date(item.createdAt).getDate()}</span>
          <span class="text">{new Date(item.createdAt).getMonth() + 1}月</span>
          <span class="text">{new Date(item.createdAt).getFullYear()}</span>
        </div>
      </div>

      <div class="content">
        <a href="javascript:;" class="cover">
          <img src={item.cover} alt="" class="artImage" />
        </a>
        <Link href={`/detail/${item.id}`}>
          <span class="text-grey">{item.introduction}</span>
        </Link>
      </div>

      <div class="read">
        <Link href={`/detail/${item.id}`}>
          <a class="read_text">继续阅读</a>
        </Link>
      </div>
      <div class="footer">
        <i class="iconfont icon-biaoqian"></i>
        {item.categories.map((item1, index) => (
          <span class="foot_tag" key={index}>
            {item1.name}
          </span>
        ))}
				<span style={{fontSize: 14,float:'right'}}>
					作者：{item.author}
				</span>
      </div>
    </section>
  );
}
