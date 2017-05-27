(function(){
        var myChart = echarts.init(document.getElementById('J_exampleChart'));

		option = {
	        title: {
		        left: 'center',
		        text: '解析健康指数',
		        textStyle: {
		        	color: '#3c5563',
					fontStyle: 'normal',
					fontWeight: 'bolder',
					fontFamily: '"Microsoft YaHei"',
					fontSize: 16
		        }
		    },
		    tooltip: {
		        trigger: 'axis'
		    },
		    legend: {
				show:false,
		        data:['解析健康指数']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    toolbox: {
				show:false,//隐藏工具箱
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        axisLine:{
					lineStyle:{
						color: '#c1ccd1'
					}
		        },
		        axisLabel:{
					textStyle:{
						color: '#435b68'
					}
		        },
		        splitLine:{
		        	show:true,
					lineStyle: {
						color: ['#c1ccd1'],
						type: 'dotted'
					}
		        },
		        data: ['2017-05-25 10:20:15','2017-05-25 10:30:15','2017-05-25 10:40:15','2017-05-25 10:50:15','2017-05-25 11:00:15','2017-05-25 11:10:15','2017-05-25 11:20:15']
		    },
		    yAxis: {
		        type: 'value',
		        axisLine:{
					lineStyle:{
						color: '#c1ccd1'
					}
		        },
		        splitLine:{
					lineStyle: {
						color: ['#c1ccd1'],
						type: 'dotted'
					}
		        },
		        axisLabel:{
					textStyle:{
						color: '#435b68'
					}
		        }
		    },
		    series: [
		        {
		            name:'解析健康指数',
		            type:'line',
		            stack: '总量',
                    symbolSize:6,
                    hoverAnimation: false,//鼠标划上动画效果
		            lineStyle: {
						normal: {
							color: '#f79d45'
						}
					},
		            data:[120, 132, 101, 134, 90, 230, 210]
		        }
		    ]
		};

	    myChart.setOption(option);
})();