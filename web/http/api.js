import Http from "./index";
let API = process.env.NEXT_PUBLIC_API_ROOT;
// let API = 'http://localhost:5454'
export default class Api {
	// 登录
	static login(params = {}) {
    let url = `${API}/api/user/login`;
    return Http.post(url, "post", params);
  }

	// 注册
	static register(params = {}) {
    let url = `${API}/api/user/register`;
    return Http.post(url, "post", params);
  }

  // 文章列表
  static getArticleList(params = {}) {
    let url = `${API}/api/article/weblist`;
    return Http.get(url, params);
  }

	// 写文章
	static async createArticle(params = {}) {
    let url = `${API}/api/article/create`;
    return Http.post(url, "post", params);
  }

  //归档文章列表
  static getArchive(params = {}) {
    let url = `${API}/api/article/webtimelist`;
    return Http.get(url, params);
  }

  static getnavList(params = {}) {
    let url = `${API}/api/nav/webnavlist`;
    return Http.get(url, params);
  }

  // 文章详情
  static getArticleDetail(params) {
    let url = `${API}/api/article/webdetail`;
    return Http.get(url, params);
  }

  // 热门文章
  static getHotArticleList(params = {}) {
    let url = `${API}/api/article/webhotlist`;
    return Http.get(url, params);
  }

  // 个人分类
  static getAllCategory(params = {}) {
    let url = `${API}/api/category/list`;
    return Http.get(url, params);
  }

  // 分类列表
  static getCategory(params = {}) {
    let url = `${API}/api/category/weblist`;
    return Http.get(url, params);
  }

  // 评论列表
  static getMessageList(params = {}) {
    let url = `${API}/api/message/weblist`;
    return Http.get(url, params);
  }

  // 文章评论列表
  static getArticleCommentList(params = {}) {
    let url = `${API}/api/articlecomment/weblist`;
    return Http.get(url, params);
  }

  // 文章评论列表
  static createArticleComment(params = {}) {
    let url = `${API}/api/articlecomment/webcreate`;
    return Http.post(url, "post", params);
  }

  // 创建留言
  static createMessage(params = {}) {
    let url = `${API}/api/message/webcreate`;
    return Http.post(url, "post", params);
  }

  /**
   * github
   */
  static async getGithubToken(params = {}) {
    let url = `${API}/api/github`;
    return Http.post(url, "post", params);
  }

  static async getGithubUserInfo(params = {}) {
    let url = `${API}/api/githubUserInfo`;
    return Http.post(url, "post", params);
  }

}
