<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="bootstrap/css/sale.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bt2/css/bootstrap.css">
    <link rel="stylesheet" href="bt2/css/bootstrap-grid.css">
    <link rel="stylesheet" href="bt2/css/bootstrap-reboot.css">
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.js"></script>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String username=null;
Cookie[] cookie=request.getCookies();
for(int i=0;i<cookie.length;i++){
	if(cookie[i].getName().equals("username")){
		username=cookie[i].getValue();
	}
}
int user=Integer.parseInt(username);
%>
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
            <li><a href="index.jsp">区域找房</a></li>
            <li><a href="#">小区</a></li>
            <li><a href="lease.jsp">我要出租</a></li>
            <li><a href="sale.jsp">我要出售</a></li>
            <li><a href="PanduanServlet">个人主页</a></li>
        </ul>
    </div>
    <div class="body2">
        <span class="s5"><a href="">滁州房产网</a>><a href="">滁州租房</a></span>
    </div>
    <div class="body3">
        <h1 class="h1">出售发布</h1>
    </div>
    <div class="body4">
        <form action="HouseaddServlet" class="form-horizontal f1">
            <ul>
                <li>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">地址：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputEmail3" placeholder="选择小区" name="address">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">总面积：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="输入面积" name="area">
                        </div>
                    </div>
                </li>
                <li><div class="form-group">
                    <label for="inputPassword4" class="col-sm-2 control-label">户型：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputPassword4" placeholder="选择户型" name="houtype">
                    </div>
                </div></li>
                <li><div class="form-group">
                    <label for="inputPassword5" class="col-sm-2 control-label">朝向：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputPassword5" placeholder="选择朝向" name="chaoxiang" >
                    </div>
                </div></li>
                <li><div class="form-group">
                    <label for="inputPassword6" class="col-sm-2 control-label">楼层：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputPassword6" placeholder="选择楼层" name="floor">
                    </div>
                </div></li>
                <li><div class="form-group">
                    <label for="inputPassword7" class="col-sm-2 control-label">装修：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputPassword7" placeholder="装修程度" name="zhuangxiu">
                    </div>
                </div></li>
                <li><div class="form-group">
                    <label for="inputPassword8" class="col-sm-2 control-label">租金：</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputPassword8" placeholder="输入出租金额" name="salemoney">
                    </div>
                </div></li>
                

            </ul>
            <input type="hidden" name="csqk" value="true">
            <input type="hidden" name="username" value="<%=user%>">
            <button type="submit" class="btn btn-success btn-lg btn-block">上传出租</button>
        </form>


    </div>
</div>
</body>
</html>