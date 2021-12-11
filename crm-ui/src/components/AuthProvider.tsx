import React from "react";
import { useNavigate } from "react-router-dom";

export type User = { username: string, password: string, role: string }
interface AuthContextType {
  token: string
  userName: string
  userRole: string
  signin: (user: User, callback: VoidFunction) => void
  signout: (callback: VoidFunction) => void
}

let AuthContext = React.createContext<AuthContextType>(null!);

export default function AuthProvider({ children }: { children: React.ReactNode }) {
  let [token, setToken] = React.useState<string>('')
  let [userName, setUserName]= React.useState<string>('')
  let [userRole, setUserRole]= React.useState<string>('')
  let navigate = useNavigate()

  let signin = (newUser: User, callback: VoidFunction) => {
    console.log('登入')
    //ToDo 调用后端接口获得token
    setToken(newUser.username + newUser.password)
    setUserName(newUser.username)
    setUserRole(newUser.role)
    callback()
  }
  let signout = (callback: VoidFunction) => {
    console.log('登出')
    //ToDo 调用后端接口获得token
    setToken('')
    setUserName('')
    setUserRole('')
    navigate('/login')
    callback()
  }

  let value = { token, userName, userRole, signin, signout }

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  )
}

export function useAuth() {
  return React.useContext(AuthContext)
}
