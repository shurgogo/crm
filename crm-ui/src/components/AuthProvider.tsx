import { useState, createContext, useEffect } from "react";
import { useNavigate } from "react-router";

export const context = createContext({})

function AuthProvider({children}: any) {
  const [isLogged, setIsLogged] = useState(false)
  const to = useNavigate()
  useEffect(() => {
    if (isLogged == true) {
      to('/main')
    } else {
      to('/login')
    }
  }, [isLogged])
  return (
    <context.Provider value={{ isLogged, setIsLogged }}>
      {children}
    </context.Provider>
  )
}

export default AuthProvider
