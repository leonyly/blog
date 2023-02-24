import { Form, Input, message } from "antd";
import React,{useContext} from "react";
import style from "./login.module.scss";
import useToggle from "/hooks/useToggle";
import Api from "/http/api";
// import { useLocalStorageState } from "ahooks";
import { UserService } from '/hooks/useUser';

export default function Login() {
  const [form] = Form.useForm();
  const username = Form.useWatch("username", form);
  const email = Form.useWatch("email", form);
  const password = Form.useWatch("password", form);
  const [isLogin, change] = useToggle();
  // const [userInfo, setUserInfo] = useLocalStorageState("userInfo", {
  //   defaultValue: {},
  // });
	const userService = useContext(UserService);

  const login = async () => {
    if (username && password) {
      const res = await Api.login({ username, password });
      console.log(res);
			if (res.code === 200) {
				const data = res.data;
				userService.login(data)
				userService.hideLogin()
				message.success('登录成功')
			} else {
				message.error('登录失败')
			}
    }
  };

  const register = async () => {
    if (username && password && email) {
      const res = await Api.register({ username, password, email });
			if (res.code === 200) {
				message.success('注册成功')
				change()
			} else {
				message.error('注册失败')
			}
    }
  };

  return (
    <div class={`${style.login} dc`}>
      <div class="content">
        <h3 class="title lg">{isLogin ? "登录" : "注册"}</h3>
        <div class="close dc" onClick={userService.hideLogin}>
          x
        </div>
        {isLogin ? (
          <Form
            form={form}
            name="basic"
            initialValues={{ remember: true }}
            // onFinish={onFinish}
            // onFinishFailed={onFinishFailed}
            onValuesChange={(...args) => console.log(args)}
          >
            <Form.Item
              name="username"
              rules={[
                {
                  required: true,
                  message: "",
                },
              ]}
            >
              <Input size="large" placeholder="输入你的昵称吧～" />
            </Form.Item>
            <Form.Item
              name="password"
              rules={[
                {
                  required: true,
                  message: "",
                },
              ]}
            >
              <Input.Password size="large" placeholder="输入你的密码吧" />
            </Form.Item>
            <Form.Item shouldUpdate>
              <div class={`submit dc pointer `} onClick={() => login(form)}>
                登录
              </div>
            </Form.Item>
          </Form>
        ) : (
          <Form form={form} name="basic" initialValues={{ remember: true }}>
            <Form.Item
              name="username"
              // rules={[
              //   {
              //     required: true,
              //     message: "Please input your username!",
              //   },
              // ]}
            >
              <Input size="large" placeholder="起个好听的昵称吧～" />
            </Form.Item>
            <Form.Item
              name="email"
              // rules={[
              //   {
              //     required: true,
              //     message: "Please input your email!",
              //   },
              // ]}
            >
              <Input size="large" placeholder="邮箱" />
            </Form.Item>
            <Form.Item
              name="password"
              // rules={[
              //   {
              //     required: true,
              //     message: "Please input your password!",
              //   },
              // ]}
            >
              <Input.Password size="large" placeholder="输入你能记得的密码" />
            </Form.Item>
            <Form.Item>
              <div class={`submit dc pointer `} onClick={register}>
                注册
              </div>
            </Form.Item>
          </Form>
        )}

        <div className="changeLogin">
          <a className="" onClick={change}>
            {isLogin ? "去注册" : "去登录"}
          </a>
        </div>

        {/* <div class="login-ways">
        <div class="ways">其他登录方式</div>
        <div class="href-list">
          <div class="href" @click="goGithubAuth">
            <i class="iconfont icon-github pointer"></i>
          </div>
        </div>
      </div> */}
      </div>
    </div>
  );
}
