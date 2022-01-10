import React, { useState } from 'react'
import { Link, useNavigate, useRoutes } from 'react-router-dom'
import { Layout, Menu, Tabs, ConfigProvider } from 'antd'
import {
  MenuUnfoldOutlined,
  MenuFoldOutlined,
} from '@ant-design/icons';
// import AuthComsumer from '../components/AuthComsumer'
import './Dashboard.css'
import UserDropdown from '../components/UserDropdown';
import { mainRoutes, userRoutes } from '../routes/routes';
import { findTitleByRelativeRoutes } from '../utils/utils';
import Welcome from './Welcome/Welcome';
import welcomeBg from '../assets/welcomebki.jpg';

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

const initialState = {
  activeKey: 'wlc',
  panes: [{ title: '首页', key: 'wlc', closable: false },]
}

function Dashboard() {
  let route = useRoutes([
    {
      path: 'wlc',
      element: <Welcome />,
    }, ...mainRoutes, ...userRoutes])
  let navigate = useNavigate()
  //Sider折叠
  let [collapsed, setCollapsed] = useState(false)
  let [paneState, setPaneState] = useState<PaneActive>(initialState)

  //点击tab显示内容
  let onChange = (key: string) => {
    setPaneState({ activeKey: key, panes: paneState.panes });
    navigate(key)
  };

  let menuOnClick = (e: any) => {
    let newRoute = e.keyPath.reverse().join('/')
    let title = findTitleByRelativeRoutes(newRoute.split('/'))
    addPane(title, newRoute)
    navigate(newRoute)
  }

  let onEdit = (targetKey: any, action: 'add' | 'remove') => {
    if (action === 'add') {
      // add()
    } else if (action === 'remove') {
      removePane(targetKey)
    }
  };
  // 点击导航增加pane，key是相对路由
  let addPane = (title: string, key: string) => {
    let { panes } = paneState;
    let exist = panes.findIndex(pane => { return pane.key === key }) !== -1

    if (!exist) {
      let newPane: Pane = {
        title: title, key: key, closable: false,
      }
      panes.push(newPane)
    }
    setPaneState({
      panes: panes,
      activeKey: key,
    });
  };
  // tab删除pane
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

  //只展开当前父级菜单
  const rootSubmenuKeys = mainRoutes.map(route => { return route.path })
  let [openKeys, setOpenKeys] = React.useState(['']);
  let onOpenChange = (keys: string[]) => {
    let latestOpenKey = keys.find(key => openKeys.indexOf(key) === -1) || '';

    if (rootSubmenuKeys.indexOf(latestOpenKey) === -1) {
      setOpenKeys(keys);
    } else {
      setOpenKeys(latestOpenKey !== '' ? [latestOpenKey] : []);
    }
  };
  let { panes, activeKey } = paneState;
  return (
    <div>

      <Layout>
        <Sider trigger={null} collapsible collapsed={collapsed}>
          <div className="logo" />
          <Menu
            theme='dark'
            mode='inline'
            defaultSelectedKeys={['mkt']}
            onOpenChange={onOpenChange}
            openKeys={openKeys}
            onClick={menuOnClick}
          >
            {mainRoutes.map(route => {
              return (
                <SubMenu key={route.path} title={route.title} icon={route.icon}>
                  {route.children?.map(child => {
                    return (
                      <Menu.Item key={child.path} icon={child.icon}>
                        {child.title}
                      </Menu.Item>)
                  }
                  )}
                </SubMenu>)
            })}
          </Menu>
        </Sider>
        <Layout className="site-layout">
          <Header className="site-layout-background" style={{ padding: 0 }}>
            {React.createElement(collapsed ? MenuUnfoldOutlined : MenuFoldOutlined, {
              className: 'trigger',
              onClick: () => setCollapsed(!collapsed)
            })}
           <UserDropdown addpane={addPane}/>
          </Header>
          
          <Layout style={{ padding: '0 24px 32px' }}>
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
                  closable={pane.key === 'wlc' ? false : true}
                  className="site-layout-background"
                  style={{
                    margin: '5px 5px',
                    padding: 24,
                    minHeight: 1080,
                    backgroundImage: pane.key === 'wlc' ? 'url(' + welcomeBg+ ')':'',
                    backgroundSize: '100% 100%',
                  }}
                >
                  {route}
                </TabPane>
              ))}
            </Tabs>
          </Layout>
          <Footer style={{ textAlign: 'center' }}>CRM ©2021 Created by solar-zhou</Footer>
        </Layout>
      </Layout>
    </div>
  )
}

export default Dashboard
