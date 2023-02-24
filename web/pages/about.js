import ProductItem from "../components/ProductItem";
import Layout from "../Layout";
import style from '/styles/about.module.scss'
function About() {
	const list = [
		{
			url: "/img/about/pyq.png",
			name: "集赞截图生成工具（移动端-H5）",
			remark: "朋友圈转发集赞截图生成，仿朋友圈页面，多种模式"
		},
		{
			url: "/img/about/xzzshop.jpeg",
			name: "猪猪小店（小程序）",
			remark: "一个微信商城小程序"
		},
		{
			url: "/img/about/duo.png",
			name: "画一个哆啦A梦（css）",
			remark: "css画一个哆啦A梦"
		},
		{
			url: "/img/about/mi.png",
			name: "仿小米商城（PC-H5）",
			remark: "慕课网学习的一个仿小米PC商城项目"
		},
		{
			url: "/img/about/account.png",
			name: "斌斌记账本（移动端-H5）",
			remark: "Vue + Ts 移动端H5记账应用项目"
		},
		{
			url: "/img/about/draw.png",
			name: "在线画板（canvas）",
			remark: "一个简单的在线画板，基于 Canvas 和 JavaScript 的小demo"
		}
	]
  return (
		<Layout>
			<div class={style.about}>
      <header class="Aboutbg">
        <div class="about-head">
          <h1>关于我</h1>
          <p>一个不断努力学习的前端菜鸟，加油！</p>
        </div>
      </header>

      <div class="container">
        <article class="about-title">
          <h1>关于自己</h1>
          <div class="about_text">
            <p>• 南华大学-18届-软件工程，目前📍：衡阳</p>
            <p>• 未来希望成为一名优秀的前端程序🐵</p>
            <p>
              •
              平时热爱学习，也喜欢逛一些像掘金，CSND，简书等论坛，学习更多关于前端的知识
            </p>
          </div>
        </article>
        <article class="about-title">
          <h1>关于博客</h1>
          <div class="about_text">
            <p>
              • 该博客PC前台使用基于react的next.js和后台管理系统使用Vue+Element UI，koa2后端接口，mysql数据库，
            </p>
            <p>
              •
              本人也还只是个前端菜鸟，代码可能也很菜，如果有什么建议，请留言告知，都会虚心受教的并且给予回复的！
            </p>
          </div>
        </article>
        {/* <article class="about-title">
          <h1>关于项目</h1>
          <div class="myPro">
            {list.map((item, index) => (
              <div key={index}>
                <ProductItem item={item}></ProductItem>
              </div>
            ))}
          </div>
        </article> */}
      </div>
    </div>
		</Layout>
    
  );
}

export async function getStaticProps() {
  return {
    props: {
    },
  };
}

export default About;
