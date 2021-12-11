import { Dropdown, Menu } from 'antd'
import { DownOutlined } from '@ant-design/icons'
import Avatar from 'antd/lib/avatar/avatar';
import { UserOutlined } from '@ant-design/icons'
import { Link } from 'react-router-dom';
import { useAuth } from './AuthProvider';
import './UserDropdown.css'


function UserDropdown() {
  let auth = useAuth()

  const menu = (
    <Menu>
      <Menu.Item key='1'> <Link to=""> 基本信息 </Link> </Menu.Item>
      <Menu.Item key='2'> <Link to=""> 修改密码 </Link> </Menu.Item>
      <Menu.Item key='3' onClick={() => {auth.signout(()=>{})}}> 退出登录 </Menu.Item>
    </Menu>
  )

  return (
    <Dropdown className='user-dropdwon' overlay={menu} trigger={['click']} >
      <a className="ant-dropdown-link" >
        <Avatar size="small" style={{ backgroundColor: '#1890ff' }} icon={<UserOutlined />} /> {auth.userName} <DownOutlined />
      </a>
    </Dropdown>
  )
}

export default UserDropdown
