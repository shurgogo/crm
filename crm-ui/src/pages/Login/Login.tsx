import { useNavigate, useLocation } from 'react-router-dom';
import { Card, Form, Input, Button, Checkbox, message } from "antd"
import { UserOutlined, LockOutlined } from "@ant-design/icons"
import { User, useAuth } from '../../components/AuthProvider';
import './Login.css'

function Login() {
  let navigate = useNavigate()
  let auth = useAuth()
  let location = useLocation()

  let from = location.state?.from?.pathname || "/main/welcome"

  const onFinish = (values: any) => {
    console.log("Received values of form: ", values)
    let user: User = { ...values }
    console.log(user.username + user.password)
    
    message.success({
      content: "Login success!",
    })
    auth.signin(user, () => navigate(from, { replace: true }))
    // if (values['username'] === "admin" && values['password'] === "admin") {
    //   // message.destroy()
    //   message.success({
    //     content: "Login success!",
    //   })
    //   auth.signin(user, () => navigate(from, { replace: true }))
    // } else {
    //   // message.destroy()
    //   message.error({
    //     content: "Incorrect username or password!",
    //   })
    // }
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

          {/* <a className="login-form-forgot" href="">
            Forgot password
          </a> */}
        </Form.Item>

        <Form.Item>
          <Button type="primary" htmlType="submit" className="login-form-button">
            Log in
          </Button>
          {/* Or <a href="">register now!</a> */}
        </Form.Item>
      </Form>
    </Card>
  );
}

export default Login
