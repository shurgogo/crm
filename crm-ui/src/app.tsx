import { Navigate, useRoutes } from 'react-router-dom'
import Dashboard from './pages/Dashboard'
import PageNotFound from './pages/PageNotFound'
import Login from './pages/Login/Login'
import Services from './pages/Services/Services'
import Reports from './pages/Reports/Reports'
import Settings from './pages/Settings/Settings'
import MktOpp from './pages/Marketing/MktOpp'
import CtmDev from './pages/Marketing/CtmDev'

function App() {
  const element = useRoutes([
    {
      path: '/',
      element: <Navigate to='login' />
    },
    {
      path: 'login',
      element: <Login />
    },
    {
      path: 'main',
      element: <Dashboard />,
      children: [
        {
          path: 'mktopp',
          element: <MktOpp />,
          index: true
        },
        {
          path: 'ctmdev',
          element: <CtmDev />,
        },

        {
          path: 'services',
          element: <Services />,
        },
        {
          path: 'reports',
          element: <Reports />,
        },
        {
          path: 'settings',
          element: <Settings />,
        },
      ]
    },
    {
      path: '*',
      element: <PageNotFound />
    },
  ])
  return (element)
}


export default App
