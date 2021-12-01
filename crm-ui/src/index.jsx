import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import "./index.css";
import Login from "./pages/Login";
import PageNotFound from "./pages/PageNotFound";
import { mainRoutes } from "./routes";

ReactDOM.render(
  <React.StrictMode>
    <Router>

      <Routes>
        <Route path="/" element={<PageNotFound />} />
        <Route path="login" element={<Login />} />
        {mainRoutes.map(route=>{
          return <Route key={route.path} {...route} />
        })}
      </Routes>

    </Router>
  </React.StrictMode>
  , document.getElementById("root")
);
