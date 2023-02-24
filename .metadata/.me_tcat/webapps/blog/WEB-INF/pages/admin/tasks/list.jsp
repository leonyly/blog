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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>static/calendar/css/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/calendar/css/fancybox.css">

<script src='http://code.jquery.com/ui/1.10.3/jquery-ui.js'></script>
<script src='<%=basePath %>static/calendar/js/fullcalendar.min.js'></script>
<script src='<%=basePath %>static/calendar/js/jquery.fancybox-1.3.1.pack.js'></script>

<script type="text/javascript">

var tasks=[];
<c:forEach items="${list}" var="item">
var item = {"id":"${item.id}","title":"${item.description}","start":"${item.title}","end":"${item.title}","url":null,"allDay":true,"color":"#f30"};
tasks.push(item);
</c:forEach>

$(function() {
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		events: tasks,
		dayClick: function(date, allDay, jsEvent, view) {
			var selDate =$.fullCalendar.formatDate(date,'yyyy-MM-dd');
			$.fancybox({
				'type':'ajax',
				'href':'<%=basePath%>event.jsp?action=add&date='+selDate
			});
    	},
    	eventClick: function(event, jsEvent, view) {
			
			//alert(event);
			console.log(event);
			var start =$.fullCalendar.formatDate(event.start,'yyyy-MM-dd HH:mm');
			var end =$.fullCalendar.formatDate(event.end,'yyyy-MM-dd  HH:mm');
			//alert(event.title+"\r\n"+start+"------"+end);
			/*$("#wps").html();
			$("#wps").fadeIn();
			$("#wps").fancybox({width:250,height:150});*/
			swal("",event.title+"\r\n"+start+"------"+end,"");
			
			
			
			
    	}
	});
	
});
</script>

</head>

<body data-type="index">


    





       
          
            <div class="row" style="padding-left:30px;padding-right:30px;">
              
<div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 我的行程规划
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
                                            
<div id="main" style="width:95%">
   
   <div id='calendar'></div>
</div>
                            
                            
                        </div>
                    </div>
                </div>

            </div>
    </div>    </div>
    


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
