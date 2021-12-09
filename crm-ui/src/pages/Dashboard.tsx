import React, { useState } from 'react'
import { Link, Outlet } from 'react-router-dom'
import { Layout, Menu } from 'antd'
import {
  MenuUnfoldOutlined,
  MenuFoldOutlined,

  AccountBookOutlined,
  PhoneOutlined,
  UserAddOutlined,

  UserOutlined,
  CustomerServiceOutlined,
  BarChartOutlined,
  SettingOutlined,
} from '@ant-design/icons';
import AuthComsumer from '../components/AuthComsumer'
import './Dashboard.css'
// import SubMenu from 'antd/lib/menu/SubMenu';


const { Header, Sider, Content } = Layout;
const { SubMenu } = Menu

function Dashboard() {

  let [collapsed, setCollapsed] = useState(false)

  return (

    <Layout>
      <Sider trigger={null} collapsible collapsed={collapsed}>
        <div className="logo" />
        <Menu theme="dark" mode="inline" defaultSelectedKeys={['1']}>
          <SubMenu key="1" title="市场营销" icon={<AccountBookOutlined />}>
            <Menu.Item key="1-1" icon={<PhoneOutlined />}>
              营销机会管理
              <Link to='mktopp'></Link>
            </Menu.Item>
            <Menu.Item key="1-2" icon={<UserAddOutlined />}>
              客户开发计划
              <Link to='ctmdev'></Link>
            </Menu.Item>
          </SubMenu>
          <Menu.Item key="2" icon={<UserOutlined />}>
            客户管理
          </Menu.Item>
          <Menu.Item key="3" icon={<CustomerServiceOutlined />}>
            服务管理
          </Menu.Item>
          <Menu.Item key="4" icon={<BarChartOutlined />}>
            统计报表
          </Menu.Item>
          <Menu.Item key="5" icon={<SettingOutlined />}>
            系统设置
          </Menu.Item>
        </Menu>
      </Sider>
      <Layout className="site-layout">
        <Header className="site-layout-background" style={{ padding: 0 }}>
          {React.createElement(collapsed ? MenuUnfoldOutlined : MenuFoldOutlined, {
            className: 'trigger',
            onClick: () => setCollapsed(!collapsed)
          })}
        </Header>
        <Content
          className="site-layout-background"
          style={{
            margin: '24px 16px',
            padding: 24,
            minHeight: 280,
          }}
        >
          <Outlet />
        </Content>
      </Layout>
    </Layout>


  )
}

export default Dashboard
