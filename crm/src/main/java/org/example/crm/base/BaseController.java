package org.example.crm.base;


import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;

public class BaseController {

    @ModelAttribute
    public void preHandler(HttpServletRequest request){
        // 获取项目的地址
        request.setAttribute("serverName",request.getServerName());
        request.setAttribute("crm", request.getContextPath());
    }


    public ResponseResult success(){
        return new ResponseResult();
    }

    public ResponseResult success(String msg){
        ResponseResult responseResult = new ResponseResult();
        responseResult.setMsg(msg);
        return responseResult;
    }

    public ResponseResult success(String msg, Object result){
        ResponseResult responseResult = new ResponseResult();
        responseResult.setMsg(msg);
        responseResult.setData(result);
        return responseResult;
    }

}
