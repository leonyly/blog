<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">


	<!-- Title -->
	<title>  轻博客系统</title>

	<!-- Styles -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="<%=basePath %>static/theme/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=basePath %>static/theme/assets/plugins/font-awesome/css/all.min.css" rel="stylesheet">

	<!-- Theme Styles -->
	<link href="<%=basePath %>static/theme/assets/css/lime.min.css" rel="stylesheet">
	<link href="<%=basePath %>static/theme/assets/css/custom.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body class="login-page err-500"
style="width:100%;height:100%;background: url(<%=basePath %>static/bgs.jpg) no-repeat;background-size:cover"
>
<div class="container">
	<div class="login-container">
		<div class="row">
		<div style="width:50%;margin:0 auto;margin-top:300px;">
			
				<div class=" " style="widh:40%;margin:0 auto; overflow:hidden;z-index:9999;
				position:relative;box-shadow: 0 14px 28px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .22);
			background:#fff;border-radius:10px; margin-top:50px">
				
				
					<div class="" style="display:inline-block;width:50%;padding-left:20px;">
						<h5 style="padding:20px 0;font-size:28px;margin-bottom:35px;" class="card-title">
						<a href="<%=basePath%>" class="float-left forgot-link">
						  轻博客系统
						</a>
						</h5>
						<form action="<%=basePath %>application/doreg" method="POST">
							<div class="form-group">
								<input type="text" required name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="输入账号...">
							</div>
							<div class="form-group">
								<input type="text" required name="realname" class="form-control" id="xexampleInputEmail1" aria-describedby="emailHelp" placeholder="输入姓名...">
							</div>
							<div class="form-group">
								<input type="password" required name="password" class="form-control" id="exampleInputPassword1" placeholder="输入密码...">
							</div>
							<div class="form-group">
								<input type="password" required name="password2" class="form-control" id="exampleInputPassword12" placeholder="输入确认密码...">
							</div>

							
							<button style="border-radius: 20px; " 
							type="submit" class="btn btn-block btn-danger float-right m-l-xxs">注册</button>
							<a style="border-radius: 20px;margin-top:15px;margin-bottom:35px;"  href="<%=basePath%>application/homepage" class="btn btn-block btn-secondary float-right">首页</a>
						</form>
					</div><div style="display:inline-block;float:right;
			background: #ff416c;
    background: linear-gradient(to right, #ff4b2b, #ff416c) no-repeat 0 0 / cover;
    color: #fff;
  
     height:405px;
    width: 250px; margin-left:20px;
    transform: translateY(0);
    transition: transform .6s ease-in-out;text-align:center;padding-top:100px;
			" class="   ">
			<h2>已有账号？</h2>
					<a style="border-radius: 20px;
    border: 1px solid #DDD; MARGIN-TOP:40PX;
    background: #ff4b2b;
    color: #fff;
    font-size: 12px;
    font-weight: bold;
    padding: 12px 45px;
    letter-spacing: 1px;
    
    text-transform: uppercase;
    transition: transform 80ms ease-in;
    cursor: pointer;" href="<%=basePath%>application/login" class="btn   ">返回登录</a>
					</div>
			
				</div>
			</div>
		</div>
	</div>
</div>



<!-- Javascripts -->
<script src="<%=basePath %>static/theme/assets/plugins/jquery/jquery-3.1.0.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/bootstrap/popper.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=basePath %>static/theme/assets/js/lime.min.js"></script>
<script src="<%=basePath %>static/layer/layer.js"></script><c:if test="${!empty state}">

	<script>
		layer.alert("注册成功",{icon: 1});
		setTimeout(function(){
			window.location.href = "<%=basePath%>application/login.html";
		}, 1500);
	</script>

</c:if>
</body>
</html>