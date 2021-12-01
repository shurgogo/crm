import Dashboard from "../pages/main/Dashboard";
import Login from "../pages/Login";
import Customer from "../pages/customer/Customer";


export const loginRoutes = [{
  path: "/login",
  element: Login
}]


export const mainRoutes = [{
  path: "main",
  element: <Dashboard/>
}, {
  path: "main/customer",
  element: <Customer/>
}
]