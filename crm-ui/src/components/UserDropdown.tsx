import { Dropdown, Menu } from 'antd'
import { DownOutlined } from '@ant-design/icons'
import Avatar from 'antd/lib/avatar/avatar';
import { UserOutlined } from '@ant-design/icons'
import { Link } from 'react-router-dom';
import { useAuth } from './AuthProvider';
import { userRoutes } from '../routes/routes';
import './UserDropdown.css'


function UserDropdown(props: any) {
  let auth = useAuth()
  let { addpane } = props

  const menu = (
    <Menu>
      {userRoutes.map(route => {
        return (
          <Menu.Item key={route.path}
            onClick={() => addpane(route.title, route.path)}
          >
            <Link to={route.path}>
              {route.title}
            </Link>
          </Menu.Item>
        )
      })
      }
      <Menu.Item key='3' onClick={() => { auth.signout(() => { }) }}> 退出登录 </Menu.Item>
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
