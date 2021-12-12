import MarketingOpportunity from './MarketingOpportunity';
import { Route, Routes } from 'react-router-dom';
import { mainRoutes } from '../../routes/routes';


function Marketing() {
  return (
    <div>
      <h1>营销管理</h1>
      <Routes>
        {mainRoutes.filter(mainRoute => {return mainRoute.path === 'mkt'})[0]
        .children?.map(mktRoute => {
          console.log(mktRoute.path)
          return <Route key={mktRoute.path} path={mktRoute.path} element={mktRoute.element}/>
        })}
      </Routes>
    </div>
  )
}

export default Marketing
