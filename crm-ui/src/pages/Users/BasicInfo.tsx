import { Form, Input, Button } from 'antd';


const layout = {
  labelCol: {
    xs: { span: 24 },
    sm: { span: 8 },
  },
  wrapperCol: {
    xs: { span: 24 },
    sm: { span: 8 },
  },
};
const tailLayout = {
  wrapperCol: { offset: 8, span: 16 },
};


function BasicInfo() {
  const [form] = Form.useForm();


  const onFinish = (values: any) => {
    console.log(values);
  };

  return (
    <Form {...layout} form={form} name="control-hooks" onFinish={onFinish}>
      <Form.Item name="account" label="管理账号" rules={[{ required: true, message: '禁止更改' }]}>
        <Input />
      </Form.Item>
      <Form.Item
        name="telephone"
        label="手机"
        rules={[
          { required: true, message: '请输入手机号' },
          () => ({
            validator(_, value) {
              if (!value  || value === '') {
                return Promise.resolve();
              }
              let regex = /^((\+)?86|((\+)?86)?)0?1[3458]\d{9}$/
              if (regex.test(value)) {
                return Promise.resolve();
              }
              return Promise.reject(new Error('请输入正确的手机号'));

            },
          }),

        ]}>
        <Input />
      </Form.Item>
      <Form.Item
        name="email"
        label="E-mail"
        rules={[
          {
            type: 'email',
            message: 'The input is not valid E-mail!',
          },
        ]}
      >
        <Input />
      </Form.Item>
      <Form.Item name="realname" label="真实姓名">
        <Input />
      </Form.Item>
      <Form.Item {...tailLayout}>
        <Button type="primary" htmlType="submit">
          确认保存
        </Button>
      </Form.Item>
    </Form>
  )
}

export default BasicInfo
