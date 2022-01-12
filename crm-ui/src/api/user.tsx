import axios, { AxiosPromise } from "axios";
import { ResponseResult } from "../utils/http_utils";


export const loginReq = (username?: string, password?: string|number): AxiosPromise<ResponseResult> => {
  return axios.request({
    url: '/crm/login',
    params: {
      username: username,
      password: password
    },
    method: 'POST',
  })
}