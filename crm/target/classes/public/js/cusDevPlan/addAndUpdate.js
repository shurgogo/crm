layui.use(['table','layer','form','laydate'],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        form = layui.form
        table = layui.table;
    var laydate = layui.laydate;



    let date = new Date;
    // 修改页面有默认的日期时间
    if ($("[name='planDate']").val() != null && $("[name='planDate']").val() != '') {
        date = $("[name='planDate']").val();
    } else {
        date = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
    }
    //为日期控制赋值
    laydate.render({
        elem: '#planDate'
        ,value: date
        ,isInitValue: true,
        trigger:'click'
    });




    // 点击取消按钮时关闭当前弹出层
    $("#closeBtn").click(function () {
        // 获取当前iframe层的索引
        let index = parent.layer.getFrameIndex(window.name);
        // 关闭当前弹出层
        parent.layer.close(index);
    });

    // 表单提交监听事件
    form.on('submit(addOrUpdateCusDevPlan)', function (data) {
        // 数据加载遮罩层
        let msg = layer.msg("数据提交中，请稍后", {
            // 图标
            icon: 16,
            // 关闭时间，不关闭
            time: false
        });

        let url = '';
        if ($("#id").val() == null || $("#id").val() == '') {
            // 新增
            url += "cusDevPlan/add";
        } else {
            // 修改
            url += "cusDevPlan/update";
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
