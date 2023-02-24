import Write from "../components/Write/Write";
// import Marked from "/components/Marked";
import { useEffect, useRef, useState,useContext } from "react";
import { Button, Form, Input, Select, Upload, message } from "antd";
import Layout from "../Layout";
import style from "/styles/edit.module.scss";
import {
  LoadingOutlined,
  PlusOutlined,
  UploadOutlined,
} from "@ant-design/icons";
import Api from "../http/api";
import Router from "next/router";
import useUserService from '/hooks/useUser';

function Edit({categoryList}) {
  const titleRef = useRef(null);
  const introductionRef = useRef(null);
  const [title, setTitle] = useState("");
  const [introduction, setIntroduction] = useState("");
  const [tag, setTag] = useState("");
  const [cover, setCover] = useState("");
  const [content, setContent] = useState("");
  const [saving, setSaving] = useState(true);
  const [loading, setLoading] = useState(false);
  const [originImage, setOriginImage] = useState(null);
	const userService = useUserService()
	console.log(userService);

  // 接受子window传来的文章内容并保存
  function handleIframePostMessage(event) {
    // if (event.origin !== "http://example.org:8080") return;
    // console.log(event);
    if (event.data.type == "save") {
			console.log("event", event);
      setContent(event.data.data);
      // setSaving(false);
    }
  }
  useEffect(() => {
    window.addEventListener("message", handleIframePostMessage);
  }, []);

  const UploadButton = () => (
    <div>
      {loading ? <LoadingOutlined /> : <PlusOutlined />}
      <div style={{ marginTop: 8 }}>Upload</div>
    </div>
  );
  // 处理封面图片上传
  const handleChange = (info) => {
    if (info.file.status === "uploading") {
      setLoading(true);
      return;
    }
    if (info.file.status === "done") {
      setCover(info.file.response.data.url);

      const { originFileObj } = info.file;
      const reader = new FileReader();
      reader.readAsDataURL(originFileObj);
      reader.onload = () => {
        setOriginImage(reader.result);
        setLoading(false);
      };
    }
  };

	const save = async () => {
		const hasEmpty = [title, introduction, tag, content, cover].some(
			(item) => !item
		);
		console.log({ title, introduction, tag, content, cover });
		if (hasEmpty) {
			message.error("参数不能为空");
			return;
		}
		const res = await Api.createArticle({
			author: userService.user.username,
			title,
			introduction,
			tag,
			content,
			cover,
			bucket: "article",
		});
		if (res.code == 200) {
			const path = res.data.id ? `/detail/${res.data.id}` : '/'
			Router.push(path)
		} else {
			message.error('添加失败')
		}
	}
  // 保存
  const handleSave = async () => {
    // 获取内容
    let mdEditor = document.getElementById("MyMdEditor");
    // setSaving(true);
    mdEditor.contentWindow.postMessage("message", "*");
		save()
		// console.log({ title, introduction, tag, content, cover });
    // let SavingTimer = setInterval(() => {
    //   if (!saving) {
    //     clearInterval(SavingTimer);
		// 		save()
    //   }
    // }, 500);
  };

  return (
    // <Write/>
    // <Marked/>
    <Layout>
      <div className={`${style.edit} layout`}>
        {/* <img src="https://elden-myblog.oss-cn-guangzhou.aliyuncs.com/article/v2-ba126c2d984de4d8b6babe4973e630c8_r.2022-05-06-22-57-37.jpg" alt="" /> */}
        <Form
          labelCol={{ span: 2 }}
          wrapperCol={{ span: 18 }}
          name="basic"
          initialValues={{ remember: true }}
          autoComplete="off"
        >
          <Form.Item
            label="标题"
            name="title"
            rules={[{ required: true, message: "Please input your username!" }]}
          >
            <Input ref={titleRef} onChange={(e) => setTitle(e.target.value)} />
          </Form.Item>
          <Form.Item
            label="简介"
            name="introduction"
            rules={[{ required: true, message: "Please input your password!" }]}
          >
            <Input
              ref={introductionRef}
              onChange={(e) => setIntroduction(e.target.value)}
            />
          </Form.Item>
          <Form.Item label="标签" name="tag">
            <Select placeholder="请选择" defaultValue={tag} onChange={()=>setTag([8])}>
							{
								categoryList.map(category => (
									<Select.Option value={category.id} key={category.id}>{category.name}</Select.Option>
								))
							}
            </Select>
          </Form.Item>
          <Form.Item label="封面" name="cover">
            <Upload
              name="file"
              data={{ bucket: "article" }}
              listType="picture-card"
              className="avatar-uploader"
              showUploadList={false}
              action={`${process.env.NEXT_PUBLIC_API_ROOT}/api/upload`}
              onChange={handleChange}
            >
              {originImage ? (
                <img src={originImage} alt="avatar" style={{ width: "100%" }} />
              ) : (
                <UploadButton />
              )}
            </Upload>
          </Form.Item>
          <iframe
            id="MyMdEditor"
            name="editor"
            style={{ width: "100%", height: "960px" }}
            allowFullScreen={true}
            // scrolling={"no"}
            src="http://localhost:3000/edit.html"
          />
          <Form.Item>
            <Button onClick={handleSave}>保存</Button>
          </Form.Item>
        </Form>
      </div>
    </Layout>
  );
}

export async function getServerSideProps() {
	const res = await Api.getAllCategory()
	console.log(res);
  return {
    props: {
			categoryList: res.data
		},
  };
}

export default Edit;
