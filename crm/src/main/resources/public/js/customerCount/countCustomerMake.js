layui.use(['table','layer','echarts'],function() {
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    // 获取折线图数据
    $.get("customerReport/countCustomerMake", {}, function (data) {
        // console.log(data);

            // 折柱图
            makeCategory(data);


    });
    $.get("customerReport/countCustomerMake02", {}, function (data) {
        // console.log(data);

        // 饼图
        makePie(data);

    });

    /**
     * 渲染折线图
     */
    function makeCategory(data) {
        let chartDom = document.getElementById('category');
        let myChart = echarts.init(chartDom);
        let option = {
            title: {
                text: '客户组成分析 - 折线图',
                // x: 'center',
                // y: 'top',
                // textStyle: {
                //     top: 0,
                //     fontSize: '32px',
                //     color: 'orange'
                // }
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    crossStyle: {
                        color: '#999'
                    }
                }
            },
            // toolbox: {
            //     feature: {
            //         dataView: {show: true, readOnly: false},
            //         magicType: {show: true, type: ['line', 'bar']},
            //         restore: {show: true},
            //         saveAsImage: {show: true}
            //     }
            // },
            // legend: {
            //     left: 'right',
            //     data: ['柱状图', '折线图']
            // },
            xAxis: [
                {
                    type: 'category',
                    data: data.data1,
                    // axisPointer: {
                    //     type: 'shadow'
                    // }
                }
            ],
            yAxis: [
                // {
                //     type: 'value',
                //     name: '个数',
                //     min: 0,
                //     axisLabel: {
                //         formatter: '{value}'
                //     }
                // },
                {
                    type: 'value',
                    // name: '个数',
                    // min: 0,
                    // axisLabel: {
                    //     formatter: '{value}'
                    // }
                }
            ],
            series: [
                // {
                //     name: '柱状图',
                //     type: 'bar',
                //     data: data.data2
                // },
                {
                    // name: '折线图',
                    type: 'line',
                    // yAxisIndex: 1,
                    data: data.data2
                }
            ]
        };
        // option &&
        myChart.setOption(option);
    }

    /**
     * 渲染饼图
     * @param name
     * @param value
     */
    function makePie(data) {

        let chartDom = document.getElementById('pie');
        let myChart = echarts.init(chartDom);
        let option = {
            title: {
                text: '客户组成分析 - 饼图',

            },
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                top: 'bottom'
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            series: [
                {
                    name: '面积模式',
                    type: 'pie',
                    radius: [50, 250],
                    center: ['50%', '50%'],
                    roseType: 'area',
                    itemStyle: {
                        borderRadius: 8
                    },
                    data: data
                }
            ]
        };
       myChart.setOption(option);
    }

});