layui.use(['table','layer','form'],function() {
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table,
        form = layui.form;

    /**
     * 渲染客户开发计划表格数据
     */
    var tableIns = table.render({
        elem: '#customerServeList', // 表格绑定的ID
        url: 'customer_serve/selectCustomerServesByHandler?'+'state=fw_003',//查询服务状态为fw_003，并且处理人是当前用户
        cellMinWidth : 95,
        page : true, // 开启分页
        height : "full-125",
        limits : [10,15,20,25],
        limit : 10,
        toolbar: "#toolbarDemo",
        id : "customerServeTable",
        cols : [[
            {field: "id", title:'编号',align:"center", sort: true},
            {field: "customer", title:'客户名称',align:"center"},
            {title: '服务状态', align: "center", templet: function (d) {
                if (d.state=='fw_001') {
                    return '<span style="color: orchid">服务创建</span>';
                } else if (d.state == 'fw_002') {
                    return '<span style="color: orangered">服务分配</span>';
                } else if (d.state == 'fw_003') {
                    return '<span style="color: olive">服务处理</span>';
                } else if (d.state == 'fw_004') {
                    return '<span style="color: orange">服务反馈</span>';
                } else if (d.state == 'fw_005') {
                    return '<span style="color: olive">服务归档</span>';
                }
            }},
            {field: 'dicValue', title: '服务类型',align:"center"},
            {field: 'serviceRequest', title: '概要信息',  align:'center'},
            {field: 'overview', title: '服务内容',  align:'center'},
            {field: 'createPeople', title: '创建人', align:'center'},
            {field: 'assigner', title: '分配人', align:'center'},
            {field: 'assignTime', title: '分配时间', align:'center', sort: true},
            {field: 'serviceProceResult', title: '处理结果', align:'center'},
            {field: 'myd', title: '满意度', align:'center'},
            {field: 'createDate', title: '创建时间', align:'center', sort: true},
            {field: 'updateDate', title: '修改时间', align:'center', sort: true},
            {title: '操作', minWidth: 210, fixed:"right",align:"center", templet: function (d) {
                    return formatterBtn(d);
            }}
        ]]
    });

    // 对操作按钮进行处理
    function formatterBtn(customerServe) {

            return "<a class='layui-btn layui-btn-xs layui-btn-warm' lay-event='pass'>服务反馈</a>"


    }

    // 点击搜索按钮事件
    $(".search_btn").click(function () {
        // 重新渲染表格
        table.reload('customerServeTable', {
            where: {
                customer: $("[name='customer']").val().trim(),
                serveType: $("[name='serveType']").val(),
                // state: $("[name='state']").val()
            }
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        });
    });

    // 渲染客户类型下拉框
    renderServeType();
    function renderServeType() {
        $.get(
            "customer_serve/selectDicByName",
            // {
            //     "dicName": "服务类型"
            // },
            function (data) {
                // console.log(data);
                $("#serveType").append(new Option("服务类型", ""));
                $.each(data, function (index, element) {
                    // console.log(index);
                    // console.log(element);
                    $("#serveType").append(new Option(index, element));
                });
                form.render("select");
            }
        );
    }

    // 表单右侧工具栏
    table.on('tool(customerServe)', function(obj){
        switch(obj.event){
            case 'pass':
                // 修改
                openCustomerServeDialog("服务管理 - 服务反馈", "customer_serve/toCustomerServeBackPage?id=" + obj.data.id);
                break;


        };
    });

    // 开启新窗口
    function openCustomerServeDialog(title, url) {
        title = "<h2>" + title + "</h2>";
        layui.layer.open({
            type: 2,
            title: title,
            shadeClose: true,
            shade: 0.6,
            area: ['500px', '350px'],
            content: url,
            // 最大化最小化
            maxmin: true,
            // 不允许窗口拉伸
            resize: false
        });
    }

});