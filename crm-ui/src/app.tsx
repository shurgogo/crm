import { Navigate, Routes, Route } from 'react-router-dom'
import Dashboard from './pages/Dashboard'
import PageNotFound from './pages/PageNotFound'
import Login from './pages/Login/Login'

function App() {
  return (
  <Routes>
    <Route path='/' element={<Navigate to='login' />}/>
    <Route path='/login' element={<Login/>}/>
    <Route path='/main/*' element={<Dashboard />}/>
    <Route path='*' element={<PageNotFound />}/>
  </Routes>
  )
}


export default App
