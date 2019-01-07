<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="res/js/echarts.common.js"></script>
<script type="text/javascript" src="res/js/jquery-3.3.1.js"></script>
</head>
<body>
		<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var url = '${pageContext.request.contextPath}/GetAllDataServlet';
    $.getJSON(url).done(function(json) {//向url请求数据，如果成功，将数据放到json
		// 2.从json中获得数据
		mou = json.age;
    	a = json.b;
    	num = json.uCount;
		option = {
			    tooltip: {
			        trigger: 'item',
			        formatter: "{a} <br/>{b}: {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        x: 'left',
			        data:[]
			    },
			    series: [
			        {
			            name:'访问来源',
			            type:'pie',
			            radius: ['50%', '70%'],
			            avoidLabelOverlap: false,
			            label: {
			                normal: {
			                    show: false,
			                    position: 'center'
			                },
			                emphasis: {
			                    show: true,
			                    textStyle: {
			                        fontSize: '30',
			                        fontWeight: 'bold'
			                    }
			                }
			            },
			            labelLine: {
			                normal: {
			                    show: false
			                }
			            },
			            data:[
			                {value:0, name:'直接访问'},
			                {value:1, name:'邮件营销'},
			                {value:0, name:'联盟广告'},
			                {value:0, name:'视频广告'},
			                {value:num, name:'搜索引擎'}
			            ]
			        }
			    ]
			};


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
    })
</script>
	
</body>
</html>