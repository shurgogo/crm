export interface UserVo{
  code: number
  msg: string
  result: {
    userId: number
    trueName: string
    userName: string
  }
}