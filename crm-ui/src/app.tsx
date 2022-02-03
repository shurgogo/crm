import { Navigate, Routes, Route } from 'react-router-dom'
import Dashboard from './pages/Dashboard'
import PageNotFound from './pages/PageNotFound'
import Login from './pages/Login/Login'
import zhCN from 'antd/lib/locale/zh_CN';
import moment from 'moment';
import 'moment/locale/zh-cn';
import { ConfigProvider } from 'antd';

moment.locale('cn')

function App() {
  return (
    <ConfigProvider locale={zhCN}>
      <Routes>
        <Route path='/' element={<Navigate to='login' />} />
        <Route path='/login' element={<Login />} />
        <Route path='/main/*' element={<Dashboard />} />
        <Route path='*' element={<PageNotFound />} />
      </Routes>
    </ConfigProvider>

  )
}


export default App
