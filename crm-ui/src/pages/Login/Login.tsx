import { useNavigate, useLocation } from 'react-router-dom';
import { Card, Form, Input, Button, Checkbox, message } from "antd"
import { UserOutlined, LockOutlined } from "@ant-design/icons"
import { User, useAuth } from '../../components/AuthProvider';
import './Login.css'
import { loginReq } from '../../api/user';

function Login() {
  let navigate = useNavigate()
  let auth = useAuth()
  let location = useLocation()

  let from = location.state?.from?.pathname || "/main/welcome"

  const onFinish = (values: any) => {
    message.destroy()
    let user: User = { ...values }
    console.log(user)
    loginReq(user.username, user.password).then(
      res => {
        console.log(res.data)
        if (res.data.code === 200) {
          message.success({
            content: "登陆成功!",
          })
          auth.signin(user, () => navigate(from, { replace: true }))
        } else {
          message.error(res.data.msg)
        }
      }
    )
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
          rules={[{ required: true, message: "请输入用户名!" }]}
        >
          <Input
            prefix={<UserOutlined className="site-form-item-icon" />}
            placeholder="用户名"
          />
        </Form.Item>
        <Form.Item
          name="password"
          rules={[{ required: true, message: "请输入密码!" }]}
        >
          <Input
            prefix={<LockOutlined className="site-form-item-icon" />}
            type="password"
            placeholder="密码"
          />
        </Form.Item>
        <Form.Item>
          <Form.Item name="remember" valuePropName="checked" noStyle>
            <Checkbox>记住我</Checkbox>
          </Form.Item>
        </Form.Item>

        <Form.Item>
          <Button type="primary" htmlType="submit" className="login-form-button">
            登录
          </Button>
          {/* Or <a href="">register now!</a> */}
        </Form.Item>
      </Form>
    </Card>
  );
}

export default Login
