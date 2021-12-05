import React from 'react'
import { Navigate, useRoutes } from 'react-router-dom';
import Dashboard from './pages/Dashboard';
import PageNotFound from './pages/PageNotFound'
import Login from './pages/Login/Login';
import RequireAuth from './components/ProtectedRouter';
import Customer from './pages/Customer/Customer';

function App() {
  let element = useRoutes([
    { path: '/', element: <Navigate to='login' replace /> },
    { path: '/login', element: <Login /> },
    {
      path: '/main',
      element: <Dashboard />,
      children: [
        { path: 'customer', element: <Customer/> }
      ]
    },
    {
      path: '/protected',
      element: <RequireAuth><Dashboard /></RequireAuth>
    },
    { path: '*', element: <PageNotFound /> }
  ])
  return element
}


export default App
