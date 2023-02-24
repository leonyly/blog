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
    <script src="<%=basePath %>static/My97DatePicker/WdatePicker.js"></script>
</head>

<body data-type="index">


    





       
          
            <div class="row" style="padding-left:30px;padding-right:30px;">
              
<div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 创建站点信息
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
                            <form class="am-form am-form-horizontal" action="<%=basePath %>content/content/save" method="POST">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">标题</label>
                                    <div class="am-u-sm-9">
                                        <input type="text"  name="title" required placeholder="">
                                        <small></small>
                                    </div>
                                </div>
                              
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">所属栏目</label>
                                    <div class="am-u-sm-9">
                                    <select name="tags">
                                         <c:forEach items="${requestScope.list }" var="u" varStatus="st">
                                         <option value="${u.id }">${u.title }</option>
                                         </c:forEach>
                                         </select>
                                        <small></small>
                                    </div>
                                </div>
                                
                                 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">封面图</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" readonly id="thumb" name="thumb"  required placeholder="">
                                        <a href="javascript:;" class="uploadImg">点击上传</a>
                                        <small></small>
                                    </div>
                                </div>
                                
                                  <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">简介</label>
                                    <div class="am-u-sm-9">
                                        <textarea name="description" required></textarea>
                                        <small></small>
                                    </div>
                                </div>
                                
                               
 <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">详细内容</label>
                                    <div class="am-u-sm-9">
                                        <textarea name="bodytext" required></textarea>
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
		<script src="<%=basePath %>static/kindeditor-4.1.10/kindeditor-min.js"></script>
				<script>
					KindEditor.ready(function (K) {
						editor = K.create('textarea[name="bodytext"]', {
							uploadJson: '<%=basePath %>static/kindeditor-4.1.10/php/upload_json.php',
							fileManagerJson: '<%=basePath %>static/kindeditor-4.1.10/php/file_manager_json.php',
							allowFileManager: true,
							items : ['source',
								'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
								'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
								'insertunorderedlist', '|', 'emoticons', 'image', 'link','fullscreen'],
							afterBlur: function () {
								this.sync();
							}
						});
					});


				</script>
</body>

</html>
