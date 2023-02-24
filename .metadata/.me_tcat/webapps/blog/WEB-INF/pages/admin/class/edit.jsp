<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="<%=basePath %>static/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath %>static/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="<%=basePath %>static/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="<%=basePath %>static/assets/css/admin.css">
    <link rel="stylesheet" href="<%=basePath %>static/assets/css/app.css">
    <script src="<%=basePath %>static/assets/js/echarts.min.js"></script>
</head>

<body data-type="index">


    





       
          
            <div class="row" style="padding-left:30px;padding-right:30px;">
              
<div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 更新班级
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


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="<%=basePath %>class/class/update" method="POST">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">班级名称</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="classname" value="${model.classname }" required placeholder="">
                                        <input type="hidden" name="id" value="${model.id }"/>
                                        <small></small>
                                    </div>
                                </div>

                               <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">所属学院</label>
                                    <div class="am-u-sm-9">
                                        <select name="collegeid" id="collegeId">
                                        <c:forEach items="${requestScope.list }" var="u" varStatus="st">
                                        <option <c:if test="${u.id eq model.collegeid}">selected</c:if> value="${u.id }">${u.collegename }</option>
                                        </c:forEach>                                        
                                        </select>
                                        <small></small>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">所属专业</label>
                                    <div class="am-u-sm-9">
                                        <select name="majorid" required id="majorId">
                                        <c:forEach items="${requestScope.list1 }" var="u" varStatus="st">
                                        <option <c:if test="${u.id eq model.majorid}">selected</c:if> value="${u.id }">${u.major_name }</option>
                                        </c:forEach>                                        
                                        </select>
                                        <small></small>
                                    </div>
                                </div>

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
		$(document).ready(function(){
			var collegeId = $("#collegeId").val();
			//loadMajor(collegeId);
		});
		$("#collegeId").change(function(){
			loadMajor($(this).val());		
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
		</script>
</body>

</html>
