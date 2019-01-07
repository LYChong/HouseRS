<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="res/js/echarts.common.js"></script>
<script type="text/javascript" src="res/js/jquery-3.2.1.js"></script>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>后台</title>
    <!-- Bootstrap Styles-->
    <link href="res/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="res/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="res/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="res/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="res/js/Lightweight-Chart/cssCharts.css">
    <script type="text/javascript" src="res/js/echarts.common.js"></script>
    <script type="text/javascript" src="res/js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="res/js/css/body.css">
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">这是个啥</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                    <a class="navbar-brand" href="index.jsp"><strong><i class="icon fa fa-plane">&emsp;后台</i> </strong></a>

		<div id="sideNav" href="">
		<i class="fa fa-bars icon"></i> 
		</div>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <!--前端界面上头部的消息可以后面改
                    -->
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>这里是消息</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.结束头部消息 -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">28% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                            <span class="sr-only">28% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">85% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                            <span class="sr-only">85% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->

        <!-- 这是菜单栏  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu" href="index.jsp"><i class="fa fa-dashboard"></i> 数据统计 </a>
                    </li>
                   
					 
						
							
      
                    
                    <li>
                        <a href="QueryAllHouseServlet"><i class="fa fa-table"></i> 信息显示	</a>
                    </li>
                    <li>
                        <a href="addInfo.jsp"><i class="fa fa-edit"></i> 添加房屋信息 </a>
                    </li>


                    
                    <li>
                        <a href="empty.html"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->


        <!-- index 页面  -->

		<div id="page-wrapper">
		  <div class="header">
                        <h1 class="page-header">
                            <!--这里可以来个欢迎某个管理者例如欢迎  杜汉涛-->
                            房屋租售<small>欢迎<%=session.getAttribute("name") %></small>
                        </h1>
                        <!--留下来预留以后直接跳到设想的界面某处-->
						<ol class="breadcrumb">
					  <li><a href="#">House</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
            <div id="page-inner">

                <!-- /. ROW  -->
	            <!--后期显示相应的数据块-->
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%=session.getAttribute("unumber") %></h3>
								<small>用户人数</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-eye fa-5x red"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
					
					
					       <div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3><%=session.getAttribute("number") %></h3>
								<small>管理员人数</small>
							</h3> 
						</div>
						<div class="icon">
						   <i class="fa fa-user fa-5x yellow"></i>
						</div>
		 
                        </div>
						</div>
                    </div>
				   
                </div>
				    
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
			suserCount = json.userCount;
	    	slandlordCount = json.landlordCount;
			shouseCount = json.houseCount;
			sRentalHouseCount = json.RentalHouseCount;
			shouseSale = json.houseSale;
	    
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
				                {value:suserCount-slandlordCount, name:'租客'},
				                {value:0, name:'邮件营销'},
				                {value:0, name:'联盟广告'},
				                {value:0, name:'视频广告'},
				                {value:slandlordCount, name:'房东'}
				            ]
				        }
				    ]
				};
	    // 使用刚指定的配置项和数据显示图表。
	    myChart.setOption(option1);
	   
	    option = {
	    	    title: {
	    	        text: '共有房子总数',
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
	    	            data: [0,shouseCount-sRentalHouseCount,0]
	    	        },
	    	        {
	    	            name: '房子',
	    	            type: 'bar',
	    	            stack: '总量',
	    	            label: {
	    	                normal: {
	    	                    show: true,
	    	                    position: 'inside'
	    	                }
	    	            },
	    	            data:[shouseCount,sRentalHouseCount,shouseSale]
	    	        }
	    	    ]
	    	};
	    myChart1.setOption(option);
	    })
	</script>
	
			
		
				<footer>网站后台管理</p>


				</footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="res/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="res/js/bootstrap.min.js"></script>

    <!-- Metis Menu Js -->
    <script src="res/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="res/js/morris/raphael-2.1.0.min.js"></script>
    <script src="res/js/morris/morris.js"></script>


	<script src="res/js/easypiechart.js"></script>
	<script src="res/js/easypiechart-data.js"></script>

	 <script src="res/js/Lightweight-Chart/jquery.chart.js"></script>

    <!-- Custom Js -->
    <script src="res/js/custom-scripts.js"></script>


    <!-- Chart Js -->
    <script type="text/javascript" src="res/js/Chart.min.js"></script>
    <script type="text/javascript" src="res/js/chartjs.js"></script>

</body>

</html>