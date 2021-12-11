import React, { useState } from 'react'
import { Link, Outlet, useNavigate } from 'react-router-dom'
import { Layout, Menu, Tabs } from 'antd'
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
// import AuthComsumer from '../components/AuthComsumer'
import './Dashboard.css'
import UserDropdown from '../components/UserDropdown';


const { Header, Sider, Footer } = Layout;
const { SubMenu } = Menu

const { TabPane } = Tabs;

export type Pane = {
  title: string,
  key: string,
  closable?: boolean,
}

type PaneActive = {
  activeKey: string,
  panes: Pane[]
}

const allPanes: Pane[] = [
  { title: '首页', key: '/main', closable: false },
  { title: '营销机会管理', key: '/main/mktopp', closable: true },
  { title: '客户开发计划', key: '/main/ctmdev', closable: true },
]


function Dashboard() {
  const navigate = useNavigate()
  let [collapsed, setCollapsed] = useState(false)

  let initialState = {
    activeKey: '/main',
    panes: [{ title: '首页', key: '/main', closable: false },]
  }

  const [paneState, setPaneState] = useState<PaneActive>(initialState)

  let onChange = (key: string) => {
    setPaneState({ activeKey: key, panes: paneState.panes });
    navigate(key)
  };

  let onEdit = (targetKey: any, action: 'add' | 'remove') => {
    if (action === 'add') {
      // add()
    } else if (action === 'remove') {
      removePane(targetKey)
    }
  };

  let addPane = (key: string) => {
    let { panes } = paneState;
    let newPane = allPanes.filter((pane) => pane.key === key)[0]
    let exist = panes.findIndex((pane) => { return pane.key === newPane.key }) !== -1

    if (newPane && !exist) {
      panes.push(newPane)
    }
    setPaneState({
      panes: panes,
      activeKey: key,
    });
  };

  let removePane = (targetKey: string) => {
    const { panes, activeKey } = paneState;
    let newActiveKey = activeKey;
    let lastIndex = 0;
    panes.forEach((pane, i) => {
      if (pane.key === targetKey) {
        lastIndex = i - 1;
      }
    });
    const newPanes = panes.filter(pane => pane.key !== targetKey);
    if (newPanes.length && newActiveKey === targetKey) {
      if (lastIndex >= 0) {
        newActiveKey = newPanes[lastIndex].key;
      } else {
        newActiveKey = newPanes[0].key;
      }
    }
    setPaneState({
      panes: newPanes,
      activeKey: newActiveKey,
    });
    navigate(newActiveKey)
  };

  const { panes, activeKey } = paneState;
  return (
    <Layout>
      <Sider trigger={null} collapsible collapsed={collapsed}>
        <div className="logo" />
        <Menu
          theme="dark"
          mode="inline"
          defaultSelectedKeys={['1']}
          onClick={(e) => addPane(e.key)}
        >
          <SubMenu key="1" title="市场营销" icon={<AccountBookOutlined />}>
            <Menu.Item key="/main/mktopp" icon={<PhoneOutlined />}>
              营销机会管理
              <Link to='/main/mktopp'></Link>
            </Menu.Item>
            <Menu.Item key="/main/ctmdev" icon={<UserAddOutlined />}>
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
          <UserDropdown />
        </Header>
        <Layout style={{ padding: '0 24px 24px' }}>
          <Tabs
            type="editable-card"
            hideAdd
            onChange={onChange}
            activeKey={activeKey}
            onEdit={onEdit}
          >
            {panes.map(pane => (
              <TabPane
                tab={<Link to={pane.key}>{pane.title}</Link>}
                key={pane.key}
                closable={pane.closable}
                className="site-layout-background"
                style={{
                  margin: '24px 16px',
                  padding: 24,
                  minHeight: 280,
                }}
              >
                <Outlet />
              </TabPane>
            ))}
          </Tabs>
        </Layout>
        <Footer style={{ textAlign: 'center' }}>CRM ©2021 Created by solar-zhou</Footer>
      </Layout>
    </Layout>


  )
}

export default Dashboard
