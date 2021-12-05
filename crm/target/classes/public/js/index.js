layui.use(['form','jquery'], function () {
    var form = layui.form,
        layer = layui.layer,

        $ = layui.jquery;



    // 为密码文本框填充值
    // if ($("#password").val() != null && $("#password").val() != '') {
    //     $("[name='password']").val(window.atob($("#password").val()));
    // }

    // 表单提交
    form.on('submit(login)', function(data){
        // // 防止多次点击，使得登录按钮暂时失效
        // $("[lay-filter='login']").toggleClass("layui-btn-disabled");
        // $("[lay-filter='login']").attr("disabled","disabled");
        // // 由于密码比较特殊，提前保存到cookie中
        // if ($("#rememberMe").prop("checked")) {
        //     $.cookie("password", window.btoa($("[name='password']").val()), {expires: 7});
        // } else {
        //     $.cookie("password", window.btoa($("[name='password']").val()));
        // }
        $.post({
                url:crm+"/user/login",
                data:{
                    userName:data.field.userName,
                    userPwd:data.field.password,
                },
                success:function (resultInfo) {
                    //判断是否登录成功，如果code等于200，成功，否则失败
                    if(resultInfo.code==200){
                        layer.msg("登录成功",{icon:1},function () {
                            //把用户信息保存在cookie中
                            if($("#rememberMe").prop("checked")){
                                $.cookie("userIdStr",resultInfo.result.userIdStr,{expires:7});
                                $.cookie("userName",resultInfo.result.userName,{expires:7});
                                $.cookie("realName",resultInfo.result.realName,{expires:7});
                            }
                            else{
                                $.cookie("userIdStr",resultInfo.result.userIdStr);
                                $.cookie("userName",resultInfo.result.userName);
                                $.cookie("realName",resultInfo.result.realName);
                            }

                            //登录成功后跳转到首页
                            window.location.href=crm+"/main";

                        });
                    }
                    else{
                        layer.msg(resultInfo.msg,{icon:5});
                    }
                }

        }


        );
        return false;
    });
});