<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = (String) request.getSession().getAttribute("username");

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

  <script src="<%=basePath%>source/scripts/window.js"></script>  
<script src="<%=basePath %>static/js.js"></script>

<style>
table tr th,table tr td{text-align:center;}
</style>

<style>
body,html{padding:0px;}
</style>
</head>

<body>

<div class="article toolbar">
	<div class="title ue-clear">
    	<h2 class="badge badge-danger">数据列表</h2>
       
    </div>
    <div class="content" style="padding:0px;">
    	
    	
    	
    	<div class="table-operate ue-clear">
	<a  class="btn btn-danger"  href="<%=basePath %>ads/ads/add" class="btn btn-primary add">添加</a>
  
</div>

<div class="table-box">
	<table>
    	<thead>
    <tr>
    <th>编号</th>    
    <th>图片名称</th>    
    <th>URL</th>
    <th>创建时间</th>
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    
   
    <c:forEach items="${requestScope.list }" var="u">
      <tr>
      <td>
      ${u.id }
      </td>
      <td>
      ${u.title }
      </td>
     
      <td>
      ${u.url }
      </td>
      <td>
      ${u.created }
      </td>
      
       
       
      <td>
      <a href="<%=basePath%>ads/ads/edit?id=${u.id}">
     	更新
     </a>	
     
     <a  href="<%=basePath%>ads/ads/delete?id=${u.id}">
     	[删除]     	
     </a>
      </td>
      </tr>
   </c:forEach>
    
    
    
    </tbody>
    </table>
</div>
    	
</div>

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


$(".passrdo").click(function(){
	var id = $(this).attr("data");
	var pass = $(this).val();
	var param = "id="+id+"&pass="+pass;
	$.get("<%=basePath%>index?acl=pass&"+param,function(e){
		window.location.href =window.location.href ; 
	});
});
</script>
</html>

