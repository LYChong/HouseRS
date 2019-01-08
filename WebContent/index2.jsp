<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.house.entity.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/housesale.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <span><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;&nbsp;<a href="sign_in.jsp">登录</a></span>
            <span>&nbsp;&nbsp;<a href="sign_up1.jsp">注册</a></span>
        </div>
        <div class="head-right">
            <form class="form-inline" action="QuerydirectionServlet">
              <div class="form-group">

                   <div class="input-group">
 <!--搜索框接口-->
                       <input type="text" class="form-control" name="address" id="exampleInputAmount" placeholder="输入地址">
                   </div>
  </div>
  <button type="submit" class="btn btn-success">搜索</button>
</form></div>
    </div>
    <div class="body1">
 <!--导航接口-->
        <ul>
            <li><a href="index.jsp">区域找房</a></li>
            <li><a href="#">小区</a></li>
            <li><a href="lease.jsp">我要出租</a></li>
            <li><a href="sale.jsp">我要出售</a></li>
            <li><a class="de" href="PanduanServlet">个人主页</a></li>
            
        </ul>
    </div>
    <div class="body2">
        <span class="s5"><a href="">滁州房产网</a>><a href="">滁州租房</a></span>
    </div>
    <div class="foot">
    
     <%
      Cookie[] cookies=request.getCookies();
      String ck=null;
      for(int i=0;i<cookies.length;i++) {
          if(cookies[i].getName().equals("username")) {
          ck=cookies[i].getValue();   
          }
      }
      int ck1=Integer.parseInt(ck);
    List<HouandUse> houses=(List)request.getAttribute("houandHouse");
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
        </ul>
    </div>
</div>
<%} %>





    </div>
</div>
<div class="d1">
    <ul>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-user"></span> 客服
        </button></li>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-wrench"></span> 帮助
        </button></li>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-zoom-in"></span> 调研
        </button></li>
        <li><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-th-large"></span> 后台
        </button></li>
    </ul>
</div>
<div class="d2">在线客服</div>
<div class="d3">查看帮助</div>
<div class="d4">市场调研</div>
<div class="d5">后台统计</div>
</body>
</html>