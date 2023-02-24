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
</head>

<body data-type="index">


    





       
          
            <div class="row" style="padding-left:30px;padding-right:30px;">
              
<div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 用户数据
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                              
                                </div>
                        </div>
                    </div>


                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-12">
                            
                            <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                       <tr>
    <th>账号</th>
    <th>电话</th>
    <th>邮箱</th>
    <th>qq</th>
    <th>联系地址</th>
    <th style="text-align:left;padding-left:10px;">用户类型</th>
   
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    
   
    <c:forEach items="${requestScope.list }" var="u">
    
      <tr>
      <td>
      ${u.username }
      </td>
       
      <td>
      ${u.tel }
      </td>
      <td>
      ${u.email }
      </td>
      <td>
      ${u.qq }
      </td>
      <td>
      ${u.address }
      </td>
       <td style="text-align:left;padding-left:10px;">
    
      <c:if test="${u.type==1}">
    用户
      </c:if>
    
      <c:if test="${u.type==5}">
     管理员
      </c:if>
        <c:if test="${u.grade eq 1}">
    <span class="badge badge-danger">已冻结</span>
      </c:if>
    
      </td>
       
      <td>
     
       <c:if test="${u.grade eq 1}">
    <a href="<%=basePath%>users/users/pas?grade=2&id=${u.id}">解冻</a>
      </c:if>
      <c:if test="${u.grade ne 1}">
    <a href="<%=basePath%>users/users/pas?grade=1&id=${u.id}">冻结</a>
      </c:if>
      
    
      <a  class="am-btn am-btn-default am-btn-xs am-text-secondary" 
      href="<%=basePath%>users/users/profile?id=${u.id}">
     	资料
     </a>	
    
     <a  class="am-btn am-btn-default am-btn-xs am-text-secondary" href="<%=basePath%>users/users/password?id=${u.id}">
     	密码重置     	
     </a>     
    
     <a  class="am-btn am-btn-default am-btn-xs am-text-secondary" href="<%=basePath%>users/users/delete?id=${u.id}&ret=list">
     	删除    	
     </a>
   
     
      </td>
      </tr>
   
   </c:forEach>
                                       
                                            
                                       
                                    </tbody>
                                </table>
                            
                            
                        </div>
                    </div>
                </div>

            </div>
    </div>    </div>
    


    <script src="<%=basePath %>static/assets/js/jquery.min.js"></script>
    <script src="<%=basePath %>static/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath %>static/assets/js/iscroll.js"></script>
    <script src="<%=basePath %>static/assets/js/app.js"></script>
    <script src="<%=basePath %>static/layer/layer.js"></script>
  <c:if test="${!empty message}">		
			<script>
			 var btn = $("#showMsgBtn", window.parent.document);
		       var msg = $("#msg", window.parent.document);
		       $(msg).val("${message}");
		       $(btn).click();
			//layer.alert("${message}",{icon: 1});
			</script>
		</c:if>
		
		
</body>

</html>
