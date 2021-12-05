import React from 'react';
import ReactDOM from 'react-dom';
import "antd/dist/antd.css"
import './index.css';
import { BrowserRouter } from 'react-router-dom';
import App from './app';
import AuthProvider from './components/AuthProvider';

ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
      <AuthProvider>
        <App />
      </AuthProvider>
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);
