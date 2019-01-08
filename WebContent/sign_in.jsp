<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/style1.css" rel="stylesheet" type="text/css" media="all" />
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="res/js/jquery-1.10.2.js"></script>
<script>$(document).ready(function(c) {
    $('.alert-close').on('click', function(c){
        $('.message').fadeOut('slow', function(c){
            $('.message').remove();
        });
    });   
});
</script>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="message warning">
<div class="inset">
    <div class="login-head">
        <h1>Login Form</h1>
         <div class="alert-close"> </div>           
    </div>
        <form action="UseDLServlet">
            <li>
                <input type="text" class="text" name="user" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}"><a href="#" class=" icon user"></a>
            </li>
                <div class="clear"> </div>
            <li>
                <input type="password" value="password" name="paswd" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"> <a href="#" class="icon lock"></a>
            </li>
            <div class="clear"> </div>
            <div class="submit">
                <input type="submit" onclick="myFunction()" value="Sign in" >
                <h4><a href="#">Lost your Password ?</a></h4>
                          <div class="clear">  </div>   
            </div>
                
        </form>
        </div>                  
    </div>
    </div>
    <div class="clear"> </div>
<!--- footer --->
<div class="footer">
    <p>Copyright &copy; 2014.</p>
</div>
</body>
</html>