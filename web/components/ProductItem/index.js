import style from '/styles/productItem.module.scss'

function ProductItem({item}) {
  const goGithub = () => {
    window.open("https://github.com/zxb1655", "_blank");
  };
  return (
    <div class={style.productitem}>
      <div class="img-div dc">
        <img class="img" src={item.url} alt="" />
      </div>
      <div class="btn dc">
        <i class="iconfont icon-github hand" onClick={goGithub}></i>
      </div>
      <div class="name">{item.name}</div>
      <div class="remark" v-html="item.remark"></div>
    </div>
  );
}

export async function getStaticProps() {
  return {
    props: {},
  };
}

export default ProductItem;
