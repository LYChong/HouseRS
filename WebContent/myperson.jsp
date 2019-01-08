<%@page import="entity.HouandUse"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="bootstrap/css/myperson.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bt2/css/bootstrap.css">
    <link rel="stylesheet" href="bt2/css/bootstrap-grid.css">
    <link rel="stylesheet" href="bt2/css/bootstrap-reboot.css">
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.js"></script>
    <script src="bootstrap/js/myperson.js"></script>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
 
<div class="box">
    <div class="head">
        <span class="s1"><b>安客居 </b></span>
        <span class=s2>|</span>
        <span class="s3">位置</span>
        <span class="s4"><a href="#">滁州</a><i class="glyphicon glyphicon-triangle-bottom"></i></span>
        <div class="head-right2">
            <span><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;&nbsp;<a href="#">登录</a></span>
            <span>&nbsp;&nbsp;<a href="#">注册</a></span>
        </div>
        <div class="head-right">
            <form class="form-inline">
                <div class="form-group">

                    <div class="input-group">
                        <!--搜索框接口-->
                        <input type="text" class="form-control" id="exampleInputAmount" placeholder="输入地址">
                    </div>
                </div>
                <button type="submit" class="btn btn-success">搜索</button>
            </form></div>
    </div>
    <div class="body1">
        <!--导航接口-->
        <ul>
            <li><a href="#">区域找房</a></li>
            <li><a href="#">小区</a></li>
            <li><a href="lease.jsp">我要出租</a></li>
            <li><a href="sale.jsp">我要出售</a></li>
            <li><a class="de" href="PanduanServlet">个人主页</a></li>
        </ul>
    </div>
     <div class="body2">
        <span class="s5"><a href="">滁州房产网</a>><a href="">我的发布</a></span>
    </div>
      <div class="hody3">
      <div class="hody3s">
      <ul>
         <li class="selected">出售</li>
         <li>出租</li>
      </ul>
      </div>
     
    	<div class="tab_box">
    	
    	        <%
      Cookie[] cookies=request.getCookies();
      String ck=null;
      for(int i=0;i<cookies.length;i++) {
          if(cookies[i].getName().equals("username")) {
          ck=cookies[i].getValue();   
          }
      }
      int ck1=Integer.parseInt(ck);
    List<HouandUse> houses=(List)request.getAttribute("houanduses");
    for(HouandUse house:houses){
        %>
        <div class="int1">
    <div class="left"></div>
    <div class="right">
        <ul>
            <li><span class="s5"><h3><b><%=house.getHouse().getAddress()%></b></h3></span></li>
            <li class="l1">
                <span>面积：<%=house.getHouse().getArea()%>平方&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>租金：<%=house.getHouse().getSalemoney()%>/月&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span><%=house.getHouse().getChaoxiang()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>楼层：<%=house.getHouse().getFloor()%>层&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span><%=house.getHouse().getZhuangxiu()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>电话：<%=house.getTelephone()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>联系人：<%=house.getName()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
            </li>
            <li class="l2">
                <button class="btn btn-success btn-lg" style="width: 100px;"><a href="HouseDeleteServlet?uname=<%=house.getHouse().getHouno()%>">下架</a></button>
            </li>
        </ul>
    </div>
</div>
<%} %>
    	
    	
    	
    	
    	
    	
    	
    	
 <%
    List<HouandUse> houses2=(List)request.getAttribute("houanduses2");
    for(HouandUse house1:houses2){
        %>

    <div class="int2 hide">
    <div class="left2"></div>
    <div class="right2">
        <ul>
            <li><span class="s52"><h3><b><%=house1.getHouse().getAddress()%></b></h3></span></li>
            <li class="l12">
                <span>面积：<%=house1.getHouse().getArea()%>平方&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>价格：<%=house1.getHouse().getLeasemoney()%>/平方&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span><%=house1.getHouse().getChaoxiang()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>楼层：<%=house1.getHouse().getFloor()%>层&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span><%=house1.getHouse().getZhuangxiu()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>电话：<%=house1.getTelephone()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                <span>联系人：<%=house1.getName()%>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
            </li>
            <li class="l22">
                <button class="btn btn-success btn-lg" style="width: 100px;"><a href="HouseDeleteServlet2?uname=<%=house1.getHouse().getHouno()%>">下架</a></button>
            </li>
        </ul>
    </div>
</div>
<%} %>
</div>



</div>
    </div>
</body>
</html>