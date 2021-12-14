import React, { useState } from 'react';
import {
  Form,
  Input,
 
  Select,
  
  Button,
 
} from 'antd';



const formItemLayout = {
  labelCol: {
    xs: { span: 24 },
    sm: { span: 8 },
  },
  wrapperCol: {
    xs: { span: 24 },
    sm: { span: 8 },
  },
};
const tailFormItemLayout = {
  wrapperCol: {
    xs: {
      span: 24,
      offset: 0,
    },
    sm: {
      span: 16,
      offset: 8,
    },
  },
};
function PasswordChange() {
  const [form] = Form.useForm();

  const onFinish = (values: any) => {
    console.log('Received values of form: ', values);
  };

  return (
    <Form
      {...formItemLayout}
      form={form}
      name="register"
      onFinish={onFinish}
      scrollToFirstError
    >

      <Form.Item
        name="oldpass"
        label="旧的密码"
        rules={[
          {
            required: true,
            message: '请输入当前密码',
          },
        ]}
        hasFeedback
      >
        <Input.Password />
      </Form.Item>
      <Form.Item
        name="newpass"
        label="新的密码"
        rules={[
          {
            required: true,
            message: '请输入新密码!',
          },
        ]}
        hasFeedback
      >
        <Input.Password />
      </Form.Item>

      <Form.Item
        name="confirm"
        label="确认密码"
        dependencies={['newpass']}
        hasFeedback
        rules={[
          {
            required: true,
            message: '请输入新密码!',
          },
          ({ getFieldValue }) => ({
            validator(_, value) {
              if (!value || getFieldValue('newpass') === value) {
                return Promise.resolve();
              }
              return Promise.reject(new Error('密码不一致，确认失败'));
            },
          }),
        ]}
      >
        <Input.Password />
      </Form.Item>

      <Form.Item {...tailFormItemLayout}>
        <Button type="primary" htmlType="submit">
          确认保存
        </Button>
      </Form.Item>
    </Form>
  )
}

export default PasswordChange
