package org.example.crm.controller;

import org.apache.ibatis.annotations.Param;
import org.example.crm.Service.UserService;
import org.example.crm.base.BaseController;
import org.example.crm.base.ResultInfo;
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
    public ResultInfo userLogin(@RequestParam("username") String userName, @RequestParam("password") String userPwd) {
        ResultInfo resultInfo = new ResultInfo();
        // 通过try catch捕获service层异常，若有异常则登录失败
        try {
            UserVo userVo = userService.userLogin(userName, userPwd);
            // 设置resultInfo的对象
            resultInfo.setResult(userVo);
        } catch (ParamsException p) {
            resultInfo.setCode(p.getCode());
            resultInfo.setMsg(p.getMsg());
        } catch (Exception e) {
            resultInfo.setCode(500);
            resultInfo.setMsg("登录失败");
        }
        return resultInfo;
    }
}
