<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="com.app.utils.*" %>
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
    <!-- The above 6 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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
    <script src="<%=basePath %>static/jquery.min.js"></script>
    <script src="<%=basePath %>static/js.js"></script>
  <style>
  
  .form p{color:#333!important;}
  </style>
</head>
<body>

 
              <div class="col-lg-12" style="padding-top:15px;">
                <!-- big box -->
                <div class="big-box">
                  <div class="col-lg-12">
                    
                    <form method="POST"  action="<%=basePath%>users/users/updatepassword">
                    <div class="card">
                      <div class="card-head">
                        <div class="left">basic forms</div>
                        <div class="right">
                          <i class="zmdi zmdi-chevron-down"></i>
                          <i class="zmdi zmdi-refresh-sync"></i>
                          <i class="zmdi zmdi-close-circle-o"></i>
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="form">
                          <p>用户名</p>                          
                          <input name="username" class="form-control" readonly value="${user.username }" type="text" placeholder="" >
        <input name="id" type="hidden" value="${user.id }">
                        </div>
                        
                             <div class="form">
                          <p>新密码</p>                          
                           <input name="password" class="form-control" type="text" required value="">
                        </div>
                        
                         <div class="form">
                          <p>确认新密码</p>                          
                             <input name="password2" class="form-control" type="text" required value="">
                        </div>
                        
                        
                       
                           <div class="form">
                          <p></p>                          
                          <button class="btn btn-primary" type="submit">提交</button>
                        </div>
                        <div class="form">
                        <h1 style="height:50px;"></h1>
                        </div>
                      </div>
                    </div>
                    
                    </form>
                    
                    
                  </div>
                    
                </div>
              </div>
            </div>
        
  <!-- end Layout -->


  <!-- script -->
  <script src="<%=basePath %>static/src/plug/jquery.js"></script>
  <script src="<%=basePath %>static/src/plug/tether.js"></script>
  <script src="<%=basePath %>static/src/plug/bootstrap.js"></script>
  <script src="<%=basePath %>static/src/plug/moment.js"></script>
  <script src="<%=basePath %>static/src/plug/jquery.flot.js"></script>
  <script src="<%=basePath %>static/node_modules/CurvedLines/curvedLines.js"></script>
  <script src="<%=basePath %>static/node_modules/peity/jquery.peity.min.js"></script>
  <script src="<%=basePath %>static/node_modules/easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
  <script src="<%=basePath %>static/node_modules/chartist/dist/chartist.min.js"></script>
  <script src="<%=basePath %>static/src/plug/fullcalendar.min.js"></script>
  <script src="<%=basePath %>static/src/dist/js/dashone.js"></script>
  <script src="<%=basePath %>static/src/dist/js/app.js"></script>
  
  <script src="<%=basePath%>source/scripts/window.js"></script>
  <script>
$().ready(function(){
	$(".uploadImg").click(function(){
		openWindow("<%=basePath%>upload.jsp");
	});
	$("#thumb").on("input",function(){
		$(".oldImg").attr("src","<%=basePath%>"+$("#thumb").val());
	});
});
</script>
  
</body>
</html>

