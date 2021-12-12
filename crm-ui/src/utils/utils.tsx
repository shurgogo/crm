import { mainRoutes } from "../routes/routes"

function getTitle(currentRoutes: any, routes: string[]): string {
  let nextRoutes = currentRoutes.filter((currentRoute: any) => {
    return currentRoute.path === routes[0]
  })
  if (routes.length === 1 || nextRoutes[0].children === null) {
    return nextRoutes[0].title
  }
  return getTitle(nextRoutes[0].children, routes.slice(1,))
}

export function findTitleByRelativeRoutes(routes: string[]): string {
  return getTitle(mainRoutes, routes)
}