package org.example.crm.controller;

import org.example.crm.Service.UserService;
import org.example.crm.base.BaseController;
import org.example.crm.base.ResponseResult;
import org.example.crm.exception.ParamsException;
import org.example.crm.vo.UserVo;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class UserController extends BaseController {
    // 不用AutoWired用Resource的原因:
    // AutoWired属于Spring注解
    // Resource属于J2EE
    @Resource
    private UserService userService;

    @PostMapping("login")
    @ResponseBody
    public ResponseResult userLogin(@RequestParam("username") String userName, @RequestParam("password") String userPwd) {
        ResponseResult responseResult = new ResponseResult();
        // 通过try catch捕获service层异常，若有异常则登录失败
        try {
            UserVo userVo = userService.userLogin(userName, userPwd);
            // 设置resultInfo的对象
            responseResult.setData(userVo);
        } catch (ParamsException p) {
            responseResult.setCode(p.getCode());
            responseResult.setMsg(p.getMsg());
        } catch (Exception e) {
            responseResult.setCode(500);
            responseResult.setMsg("登录失败");
        }
        return responseResult;
    }
}
