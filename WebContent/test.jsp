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

<div id="main" style="width: 300px;height:300px;"></div>
<div id="main1" style="width: 600px;height:600px;"></div>
	<script type="text/javascript">
	    // 基于准备好的dom，初始化echarts实例
	    var myChart = echarts.init(document.getElementById('main'));
	    var myChart1 = echarts.init(document.getElementById('main1'));
	    // 指定图表的配置项和数据
	    var url = '${pageContext.request.contextPath}/GetAllDataServlet';
	    $.getJSON(url).done(function(json) {//向url请求数据，如果成功，将数据放到json
			// 2.从json中获得数据
			mou = json.age;
			a = json.b;
			num = json.uCount;
	    
			option1 = {
				    tooltip: {
				        trigger: 'item',
				        formatter: "{a} <br/>{b}: {c} ({d}%)"
				    },
				    legend: {
				        orient: 'vertical',
				        x: 'left',
				        data:[ '租房客',' ',' ',' ','房东']
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
				                {value:1, name:'租客'},
				                {value:0, name:'邮件营销'},
				                {value:0, name:'联盟广告'},
				                {value:0, name:'视频广告'},
				                {value:num, name:'房东'}
				            ]
				        }
				    ]
				};
	    // 使用刚指定的配置项和数据显示图表。
	    myChart.setOption(option1);
	   
	    option = {
	    	    title: {
	    	        text: '深圳月最低生活费组成（单位:元）',
	    	        subtext: 'From ExcelHome',
	    	        sublink: 'http://e.weibo.com/1341556070/AjQH99che'
	    	    },
	    	    tooltip : {
	    	        trigger: 'axis',
	    	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	    	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	    	        },
	    	        formatter: function (params) {
	    	            var tar = params[1];
	    	            return tar.name + '<br/>' + tar.seriesName + ' : ' + tar.value;
	    	        }
	    	    },
	    	    grid: {
	    	        left: '3%',
	    	        right: '4%',
	    	        bottom: '3%',
	    	        containLabel: true
	    	    },
	    	    xAxis: {
	    	        type : 'category',
	    	        splitLine: {show:false},
	    	        data : ['共有房子','出售','出租']
	    	    },
	    	    yAxis: {
	    	        type : 'value'
	    	    },
	    	    series: [
	    	        {
	    	            name: '辅助',
	    	            type: 'bar',
	    	            stack:  '总量',
	    	            itemStyle: {
	    	                normal: {
	    	                    barBorderColor: 'rgba(0,0,0,0)',
	    	                    color: 'rgba(0,0,0,0)'
	    	                },
	    	                emphasis: {
	    	                    barBorderColor: 'rgba(0,0,0,0)',
	    	                    color: 'rgba(0,0,0,0)'
	    	                }
	    	            },
	    	            data: [0, 20, 15, 10, 5, 0]
	    	        },
	    	        {
	    	            name: '生活费',
	    	            type: 'bar',
	    	            stack: '总量',
	    	            label: {
	    	                normal: {
	    	                    show: true,
	    	                    position: 'inside'
	    	                }
	    	            },
	    	            data:[10,5,3]
	    	        }
	    	    ]
	    	};
	    myChart1.setOption(option);
	    })
	</script>
	


  


	




	
</body>
</html>