layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    // 渲染指派人下拉框
    let assignMan = $("#otherAssignMan").val();
    // 选择修改页面时，默认选中原始数据的指派人
    renderAssignMan(assignMan);
    function renderAssignMan(assignMan) {
        $.get(
            crm+"/user/getSales",
            {},
            function (data) {
                console.log(data)
                if(data!=null){
                    for(var i=0;i<data.length;i++){
                        var opt="";
                        if (data[i].id == assignMan) {
                            opt="<option value='"+data[i].id+"' selected>"+data[i].userName+"</option>";
                        } else {
                            opt="<option value='"+data[i].id+"'>"+data[i].userName+"</option>";
                        }
                        $("#assignMan").append(opt);

                    }

                    layui.form.render("select");
                }
                }

        );
    }

    // 点击取消按钮时关闭当前弹出层
    $("#closeBtn").click(function () {
        // 获取当前iframe层的索引
        let index = parent.layer.getFrameIndex(window.name);
        // 关闭当前弹出层
        parent.layer.close(index);
    });

    // 表单提交监听事件(确认按钮)
    form.on('submit(addOrUpdateSaleChance)', function (data) {
        // 数据加载遮罩层
        let msg = layer.msg("数据提交中，请稍后", {
            // 图标
            icon: 16,
            // 关闭时间，不关闭
            time: false
        });

        let url = '';

        if ($("[name='id']").val() == null || $("[name='id']").val() == '') {
            // 新增
            url += "saleChance/add";
        } else {
            // 修改
            url += "saleChance/update";
        }

        // 发送请求
        $.post(
            url,
            data.field,
            function (data) {
                // 关闭数据加载遮罩层
                layer.close(msg);
                // 请求返回成功
                if (data.code == 200) {
                    layer.msg(data.msg, {icon: 6});
                    // 延迟关闭子窗口
                    setTimeout(function () {
                        // 重新渲染父页面表单
                        parent.location.reload("form");
                        // 关闭当前弹出层
                        layer.close("iframe");
                    },800);
                } else {
                    // 请求返回失败
                    layer.msg(data.msg,{icon: 5});
                }
            }
        );

        // 阻止表单提交
        return false;
    });


    
});