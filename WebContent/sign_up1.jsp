<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="UseServlet">
<div>
<label for="username">用户名：</label>
<input type="text" name="username"n id="username">
</div>
<div>
<label for="password">密码：</label>
<input type="password" name="password" id="password">
</div>
<div>
<label for="telephone">电话号码：</label>
<input type="text" name="telephone" id="telephone">
</div>
<div>
<label for="name">真实姓名：</label>
<input type="text" name="name" id="name">
</div>
<div>
<label>房东或用户</label>
<input type="radio" name="int1" value="true">房东
<input type="radio" name="int1" value="false">用户
</div>
<button type="submit">注册</button>
</form>
</body>
</html>