<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" type="text/css" href="res/css/style.css" />
<link rel="stylesheet" type="text/css" href="res/css/body.css"/>
</head>
<body>
	<div class="container">
    <section id="content">
        <form action="AddAdminServlet"  method="post">
            <h1>注册</h1>
            <div>
                <input type="text" placeholder="用户名"  name="uname" value="" />
            </div>
            <div>
                <input type="password" placeholder="密码"  name="upwd" value=""/>
            </div>
            <div class="">
                <span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div>
            <div align="center">
                <input type="submit" value="注册" class="btn btn-primary"  id="js-btn-login"/>
            </div>
        </form>
    </section><!-- content -->
</body>
</html>