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
                        <span class="am-icon-code"></span> 新增用户
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
                            <form class="am-form am-form-inline" action="<%=basePath %>users/users/save" method="POST">
                            
                            <div class="am-form-group">
                                    <label for="user-name"  class="am-u-sm-2 am-form-label">类型</label>
                                    <div class="am-u-sm-6">
                                         <select name="type" style="height:40px;" class="form-control">
        	 <option value="1">用户</option>
        	<option value="5">管理员</option>
        </select>
                                        <small></small>
                                    </div>
                                </div>
                                
                                 
                                
                                <div style="clear:both"></div>
                            
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">账号</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="username" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">密码</label>
                                    <div class="am-u-sm-8">
                                        <input type="password" name="password" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">确认密码</label>
                                    <div class="am-u-sm-8">
                                        <input type="password" name="password2" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                    <div style="clear:both"></div>
                                
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">头像</label>
                                    <div class="am-u-sm-8">
                                        <input readonly type="text"   required   id="thumb" value="" name="thumb" >
																<a href="javascript:;" class="uploadImg">点击上传</a>
                                        <small></small>
                                    </div>
                                </div>
                                    <div style="clear:both"></div>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">姓名</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="realname" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">性别</label>
                                    <div class="am-u-sm-8">
                                        
                                        <select name="sex">
                                        	<option value="1">男</option>
                                        	<option value="2">女</option>
                                        </select>
                                        <small></small>
                                    </div>
                                </div>
                                
                             
                                    <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">年龄</label>
                                    <div class="am-u-sm-8">
                                        <input type="number" name="age" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
    <div style="clear:both"></div>

 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">身份证</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="ecard" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">联系地址</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="address" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                
                                
                                    <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">邮箱</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="email" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                    <div style="clear:both"></div>
                                
                                   <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">qq</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="qq" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                                
                                 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">电话</label>
                                    <div class="am-u-sm-8">
                                        <input type="text" name="tel" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                               
   <div style="clear:both"></div>
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">保存数据</button>
                                    </div>
                                </div>
                            </form>
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
    <script src="<%=basePath%>source/scripts/window.js"></script>
  <c:if test="${!empty message}">		
			<script>
			 var btn = $("#showMsgBtn", window.parent.document);
		       var msg = $("#msg", window.parent.document);
		       $(msg).val("${message}");
		       $(btn).click();
			//layer.alert("${message}",{icon: 1});
			</script>
		</c:if>
		
		<script>
window.onload = function(){
	$(".uploadImg").click(function(){
		openWindow("<%=basePath%>upload.jsp");
	});
	$("#thumb").on("input",function(){
		$(".oldImg").attr("src","<%=basePath%>"+$("#thumb").val());
	});
};
</script>


<script>
var option = "<option value=''>==请选择==</option>";
		
		$("#collegeId").change(function(){
			$("#majorId").html(option);
			$("#classId").html(option);
			loadMajor($(this).val());		
		});
		
		$("#majorId").change(function(){		
			$("#classId").html(option);
			loadClass($(this).val());		
		});
		
		function loadMajor(id)
		{
			url = "<%=basePath%>class/class/getMajor?id="+id;
		
			
			
			$.ajax({
			    url: url,
			    type: 'GET',
			    dataType: 'text/html',
			    timeout: 5000,
			    async: false,
			    error: function(data){
			    	$("#majorId").html(data.responseText);
			    },
			    success: function(json){
			    // alert("OK");
			    }
			  });
		}
		
		
		function loadClass(id)
		{
			url = "<%=basePath%>class/class/getClass?id="+id;
		
			
			
			$.ajax({
			    url: url,
			    type: 'GET',
			    dataType: 'text/html',
			    timeout: 5000,
			    async: false,
			    error: function(data){
			    	$("#classId").html(data.responseText);
			    },
			    success: function(json){
			    // alert("OK");
			    }
			  });
		}
		</script>
</body>

</html>
