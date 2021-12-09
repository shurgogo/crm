import { useAuth } from './AuthProvider'
import { useLocation, Navigate } from 'react-router-dom'

function AuthComsumer({ children }: { children: JSX.Element }) {
  let auth = useAuth();
  let location = useLocation();

  if (auth.token === '') {
    return <Navigate to="/login" state={{ from: location }} />;
  }

  return children;
}

export default AuthComsumer
