import React, { useContext } from 'react'
import { Navigate } from 'react-router'
import { context } from './AuthProvider'


function RequireAuth({ children }: any) {
  const { isLogged } = useContext<any>(context)
  if (isLogged) {
    return children
  } else {
    return <Navigate to='/login' replace={true} />
  }
}

export default RequireAuth