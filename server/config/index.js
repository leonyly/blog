module.exports = {
  port: 5454, // 端口
  // url: "http://blogserve.jzzz66.cn",
  url: "http://localhost:5454",
  JWT_SECRET: "zxbzxb", // jwt 生成 token 的时候用的密钥
  SECRET_KEY: "zxbzxb",
  // NODEMAILER: {
  //   email: "912367306@qq.com",
  //   pass: "qwer13713045106.",
  //   IMAP: "mnohoejehcbobeaj", // qq 授权码 不是qq密码
  //   POP3: "tosifiifdsqubchf",
  // },
  MYSQL: {
    HOST: "127.0.0.1",
    DATABASE: "myblog",
    USER: "root",
    PASSWORD: "Password01",
  },

  oss: {
    region: "oss-cn-guangzhou",
    accessKeyId: "LTAI5tLwfSxS9iUJL981Mgez",
    accessKeySecret: "Rg8LP6hvGvY2Jc8A0rbijwDbPnzXju",
    bucket: "elden-myblog",
  },

  // github
  client_secret: "0d6f96fa02afdec1f3f1acbbd558c26e88abbb3c",
  client_id: "9bd07e9830171f53793c",
};
