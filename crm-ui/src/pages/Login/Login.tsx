import { useContext } from "react";
import { context } from "../../components/AuthProvider";
import { Card, Form, Input, Button, Checkbox, message } from "antd"
import { UserOutlined, LockOutlined } from "@ant-design/icons"
import './Login.css'

function Login() {
  const {setIsLogged} = useContext<any>(context)

  const onFinish = (values: any) => {
    console.log("Received values of form: ", values);
    if (values['username'] === "123" && values['password'] === "123") {
      message.destroy()
      message.success({
        content: "Login success!",
      })
      setIsLogged(true)
    } else {
      message.destroy()
      message.error({
        content: "Incorrect username or password!",
      })
    }
  };


  return (
    <Card title="CRM后端登录"
      headStyle={{ "textAlign": "center" }}
      className="login-form"
    >
      <Form
        name="normal_login"
        initialValues={{ remember: true }}
        onFinish={onFinish}
      >
        <Form.Item
          name="username"
          rules={[{ required: true, message: "Please input your Username!" }]}
        >
          <Input prefix={<UserOutlined className="site-form-item-icon" />} placeholder="Username" />
        </Form.Item>
        <Form.Item
          name="password"
          rules={[{ required: true, message: "Please input your Password!" }]}
        >
          <Input
            prefix={<LockOutlined className="site-form-item-icon" />}
            type="password"
            placeholder="Password"
          />
        </Form.Item>
        <Form.Item>
          <Form.Item name="remember" valuePropName="checked" noStyle>
            <Checkbox>Remember me</Checkbox>
          </Form.Item>

          <a className="login-form-forgot" href="">
            Forgot password
          </a>
        </Form.Item>

        <Form.Item>
          <Button type="primary" htmlType="submit" className="login-form-button">
            Log in
          </Button>
          Or <a href="">register now!</a>
        </Form.Item>
      </Form>
    </Card>
  );
}

export default Login
