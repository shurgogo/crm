layui.use(['form','jquery'], function () {
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery;

    form.on('submit(saveBtn)', function(data) {
        $.post(
            "user/updatePWD",
            {
                oldPwd: data.field.oldPWD,
                newPwd: data.field.newPWD,
                repeatPwd: data.field.checkPWD
            },
            function (data) {
                // 成功
                if (data.code == 200) {
                    // 清空cookie，并返回到登录页面
                    layer.msg("修改成功,3s后请重新登录",{icon:1},function (){
                        $.removeCookie("userIdStr",{domain:serverName,path:crm});
                        $.removeCookie("userName",{domain:serverName,path:crm});
                        $.removeCookie("realName",{domain:serverName,path:crm});
                        window.parent.location.href = crm+"/index";
                    });
                } else {    // 失败
                    layer.msg(data.msg,{icon: 5});
                }
            }
        );
    });

});