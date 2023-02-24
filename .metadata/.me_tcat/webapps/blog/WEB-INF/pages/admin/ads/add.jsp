<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="com.app.utils.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = (String) request.getSession().getAttribute("username");
String message = (String)request.getAttribute("message");


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

  <script src="<%=basePath %>static/dist/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="<%=basePath %>static/dist/sweetalert.css">
  <link rel="stylesheet" href="<%=basePath %>static/animate.css">
  <script src="<%=basePath%>source/scripts/window.js"></script>  
<script src="<%=basePath %>static/js.js"></script>

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
</head>

<body>
<c:if test="${inpost!=null}">
 <c:if test="${message!=null}">
   <script>
alert("恭喜您，数据添加成功.")
</script>
</c:if>
 
</c:if>
<div class="article toolbar">
	<div class="title ue-clear">
    	<h2 class="badge badge-danger">图片添加</h2>
       
    </div>
    <div class="content" style="padding:50px;">
    	
    	
    	<form method="POST" action="<%=basePath%>ads/ads/save">
    	
    	<div class="main" >
	<p class="short-input ue-clear">
    	<label>图片标题：</label>
        <input name="title"  required value="" type="text" placeholder="" >        
        <span></span>
    </p>
    
   <p class="short-input ue-clear">
    	<label>链接URL：</label>
        <input name="url"  required value="" type="text" placeholder="" >        
        <span></span>
    </p>
    
    <p class="short-input ue-clear">
    	<label>大图：</label>
        	<input readonly type="text"   required   id="thumb" value="" name="thumb" >
		    <a href="javascript:;" class="uploadImg">点击上传</a>        
        <span></span>
    </p>

            <div class="btn1 ue-clear" style="display: block">
                <button type="submit" class="confirm">确定</button>

            </div>
    
    
</div>
            <div class="clear"></div>

</div>

</form>
</div>
	

</body>

<script type="text/javascript" src="<%=basePath %>static/admin/frames/js/common.js"></script>
<script type="text/javascript">
$(".title-list ul").on("click","li",function(){
	var aIndex = $(this).index();
	$(this).addClass("current").siblings().removeClass("current");
	$(".matter-content").removeClass("current").eq(aIndex).addClass("current");
});

$(".duty").find("tbody").find("tr:even").css("backgroundColor","#eff6fa");
</script>
</html>












































