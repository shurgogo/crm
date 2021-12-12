import Services from '../pages/Services/Services'
import Reports from '../pages/Reports/Reports'
import Settings from '../pages/Settings/Settings'
import MarketingOpportunity from '../pages/Marketing/MarketingOpportunity'
import CustomerDevelop from '../pages/Marketing/CustomerDevelop'

import {
  AccountBookOutlined,
  PhoneOutlined,
  UserAddOutlined,

  UserOutlined,
  UserSwitchOutlined,
  UserDeleteOutlined,

  CustomerServiceOutlined,
  AppstoreAddOutlined,
  CopyOutlined,
  FormOutlined,
  CommentOutlined,
  ContainerOutlined,

  BarChartOutlined,
  RiseOutlined,
  PieChartOutlined,
  WhatsAppOutlined,
  UsergroupDeleteOutlined,

  SettingOutlined,
  SortAscendingOutlined,
  SolutionOutlined,
  KeyOutlined,
  AlignCenterOutlined,
} from '@ant-design/icons';
import Welcome from '../pages/Welcome/Welcome'
import CustomerInfo from '../pages/Customers/CustomerInfo'
import CustomerLoss from '../pages/Customers/CustomerLoss'
import ServiceCreate from '../pages/Services/ServiceCreate'
import ServiceDistribute from '../pages/Services/ServiceDistribute'
import ServiceHandle from '../pages/Services/ServiceHandle'
import ServiceFeedback from '../pages/Services/ServiceFeedback'
import ServiceArchive from '../pages/Services/ServiceArchive'
import Customers from '../pages/Customers/Customers'
import Marketing from '../pages/Marketing/Marketing'
import React from 'react'

export type MyRoute = {
  title: string,
  path: string,
  element?: React.ReactElement,
  icon?: React.ReactElement,
  children?: MyRoute[],
}

export const mainRoutes: MyRoute[] = [
  {
    title: '营销管理',
    path: 'mkt',
    // element: <Marketing />,
    icon: <AccountBookOutlined />,
    children: [
      { title: '营销机会管理', path: 'mktopp', element: <MarketingOpportunity />, icon: <PhoneOutlined />, },
      { title: '客户开发计划', path: 'ctmdev', element: <CustomerDevelop />, icon: <UserAddOutlined />, },
    ],
  },
  {
    title: '客户管理',
    path: 'ctm',
    // element: <Customers />,
    icon: <UserOutlined />,
    children: [
      { title: '客户信息管理', path: 'infmng', element: <CustomerInfo />, icon: <UserSwitchOutlined />, },
      { title: '客户流失管理', path: 'losmng', element: <CustomerLoss />, icon: <UserDeleteOutlined />, },
    ],
  },
  {
    title: '服务管理',
    path: 'srv',
    // element: <Services />,
    icon: <CustomerServiceOutlined />,
    children: [
      { title: '服务创建', path: 'create', element: <ServiceCreate />, icon: <AppstoreAddOutlined />, },
      { title: '服务分配', path: 'distri', element: <ServiceDistribute />, icon: <CopyOutlined />, },
      { title: '服务处理', path: 'handle', element: <ServiceHandle />, icon: <FormOutlined />, },
      { title: '服务反馈', path: 'feedbk', element: <ServiceFeedback />, icon: <CommentOutlined />, },
      { title: '服务归档', path: 'archiv', element: <ServiceArchive />, icon: <ContainerOutlined />, },
    ],
  },
  {
    title: '统计报表',
    path: 'rpt',
    // element: <Reports />,
    icon: <BarChartOutlined />,
    children: [
      { title: '客户贡献分析', path: 'ctmctb', element: <CustomerDevelop />, icon: <RiseOutlined />, },
      { title: '客户构成分析', path: 'ctmcst', element: <CustomerDevelop />, icon: <PieChartOutlined />, },
      { title: '客户服务分析', path: 'ctmsrv', element: <CustomerDevelop />, icon: <WhatsAppOutlined />, },
      { title: '客户流失分析', path: 'ctmlos', element: <CustomerDevelop />, icon: <UsergroupDeleteOutlined />, },
    ],
  },
  {
    title: '系统设置',
    path: 'set',
    // element: <Settings />,
    icon: <SettingOutlined />,
    children: [
      { title: '字典管理', path: 'dicmng', element: <CustomerDevelop />, icon: <SortAscendingOutlined />, },
      { title: '用户管理', path: 'ctmmng', element: <CustomerDevelop />, icon: <SolutionOutlined />, },
      { title: '角色管理', path: 'rolmng', element: <CustomerDevelop />, icon: <KeyOutlined />, },
      { title: '菜单管理', path: 'mnumng', element: <CustomerDevelop />, icon: <AlignCenterOutlined />, },
    ],
  },
]

export const paneRoutes = [
  { title: '首页', path: '/main/welcome', element: <Welcome />, closable: false },
  { title: '营销机会管理', path: '/main/mkt/mktopp', element: <MarketingOpportunity />, icon: <PhoneOutlined />, },
  { title: '客户开发计划', path: '/main/mkt/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '客户信息管理', path: '/main/cli/ctminf', element: <CustomerInfo />, icon: <PhoneOutlined />, },
  { title: '客户流失管理', path: '/main/cli/ctmlos', element: <CustomerLoss />, closable: false, icon: <UserAddOutlined />, },
  { title: '服务创建', path: '/main/srv/create', element: <ServiceCreate />, icon: <PhoneOutlined />, },
  { title: '服务分配', path: '/main/srv/distri', element: <ServiceDistribute />, closable: false, icon: <UserAddOutlined />, },
  { title: '服务处理', path: '/main/srv/handle', element: <ServiceHandle />, icon: <PhoneOutlined />, },
  { title: '服务反馈', path: '/main/srv/feedbk', element: <ServiceFeedback />, closable: false, icon: <UserAddOutlined />, },
  { title: '服务归档', path: '/main/srv/archiv', element: <ServiceArchive />, icon: <PhoneOutlined />, },
  { title: '客户贡献分析', path: '/main/rpt/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '客户构成分析', path: '/main/rpt/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '客户服务分析', path: '/main/rpt/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '客户流失分析', path: '/main/rpt/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '字典管理', path: '/main/set/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '用户管理', path: '/main/set/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '角色管理', path: '/main/set/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
  { title: '菜单管理', path: '/main/set/ctmdev', element: <CustomerDevelop />, closable: false, icon: <UserAddOutlined />, },
]
