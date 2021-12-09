import React from "react";

export type User = { username: string, password: string }
interface AuthContextType {
  token: string
  signin: (user: User, callback: VoidFunction) => void
  signout: (callback: VoidFunction) => void
}

let AuthContext = React.createContext<AuthContextType>(null!);

export default function AuthProvider({ children }: { children: React.ReactNode }) {
  let [token, setToken] = React.useState<string>('')

  let signin = (newUser: User, callback: VoidFunction) => {
    console.log('登入')
    //ToDo 调用后端接口获得token
    setToken(newUser.username + newUser.password)
    callback()
  }
  let signout = (callback: VoidFunction) => {
    console.log('登出')
    //ToDo 调用后端接口获得token
    setToken('')
    callback()
  }

  let value = { token, signin, signout }

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  )
}

export function useAuth() {
  return React.useContext(AuthContext)
}
