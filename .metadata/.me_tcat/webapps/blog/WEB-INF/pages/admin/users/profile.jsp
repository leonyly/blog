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
    <script src="<%=basePath %>static/js2.js"></script>
  <!-- titel -->
  <title></title>
  <style>
  .form-group{margin:10px 0}
  .form-group p{display:block;padding:0 10px}
  .form-inline input.form-control{width:50%}
  </style>
</head>
<body>

 
              <div class="col-lg-12" style="padding-top:15px;">
                <!-- big box -->
                <div class="big-box">
                  <div class="col-lg-12">
                    
                    <form method="POST"  action="<%=basePath%>users/users/update">
                    <div class="card" style="width: 100%">
                      <div class="card-head">
                        <div class="left">basic forms</div>
                        <div class="right">
                          <i class="zmdi zmdi-chevron-down"></i>
                          <i class="zmdi zmdi-refresh-sync"></i>
                          <i class="zmdi zmdi-close-circle-o"></i>
                        </div>
                      </div>
                      <div class="card-body">
                          <div class="form-group1">
                              <p style=";">头像
                                  <c:if test="${!empty user.thumb}">
                                      <img class="uploadImg oldImg" style="width:150px;height:150px;display:block;" src="<%=basePath %>${user.thumb}"/>
                                      <br>
                                  </c:if>
                                  <br>
                                  <input type="hidden"   id="thumb" value="${user.thumb}" name="thumb" >
                                  <a href="javascript:;" class="uploadImg ">点击上传</a></p>
                          </div>
                        <div class="form-group">
                          <p>用户名</p>                          
                          <input name="username" class="form-control" readonly value="${user.username }" type="text" placeholder="" >
        <input name="id" type="hidden" value="${user.id }">
                        </div>
                        

                        
                        
                        
                           <div class="form-group">
                          <p>姓名</p>                          
                           <input name="realname" class="form-control" type="text" value="${user.realname }">
                        </div>
                        
                         <div class="form-group">
                          <p>性别</p>                          

                             <select name="sex" class="form-control" id="">
                                 <option <c:if test="${sex==1}">男</c:if> value="1">男</option>
                                 <option  <c:if test="${sex==2}">女</c:if>value="2">女</option>
                             </select>
                        </div>
                        
                         <div class="form-group">
                          <p>年龄</p>                          
                           <input name="age" required class="form-control" type="text" value="${user.age }">
                        </div>
                        
                         <div class="form-group">
                          <p>身份证</p>                          
                           <input name="ecard" class="form-control" type="text" value="${user.ecard }">
                        </div>
                         <div class="form-group">
                          <p>地址</p>                          
                           <input name="address" class="form-control" type="text" value="${user.address }">
                        </div>
                        
                        
                        <div class="form-group">
                          <p>邮箱</p>                          
                            <input name="email" class="form-control" type="text" value="${user.email }">
                        </div>
                        
                        <div class="form-group">
                          <p>QQ</p>                          
                            	<input name="qq" class="form-control" type="text" value="${user.qq }">
                        </div>
                        
                        <div class="form-group">
                          <p>电话</p>                          
                          <input name="tel" class="form-control" type="text" value="${user.tel }">
                        </div>
                        
                          <div class="form-group">
                          <p>签名档</p>                          
                          <input name="position" class="form-control" type="text" value="${user.position }">
                        </div>
                           <div class="form-group">
                          <p></p>                          
                          <button class="btn btn-primary" type="submit">提交</button>
                        </div>
                        <div class="form-group">
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

