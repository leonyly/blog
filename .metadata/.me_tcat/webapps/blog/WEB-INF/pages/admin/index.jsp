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
    
    <style>
body{
   
    
    background-repeat: repeat-x;}
    .am-topbar-inverse .am-topbar-nav>li>a{
  
    }
    .am-icon-list:before{}
    .am-topbar-inverse .am-topbar-nav>li>a:hover span,
    .am-topbar-inverse .am-topbar-nav>li>a:focus, 
    .am-topbar-inverse .am-topbar-nav>li>a:hover
    {
    color:#FFF!important
    }
    .lime-sidebar .lime-sidebar-inner ul li a{
     color:#FFF!important;
     line-height: 24px;
    }
    .tpl-left-nav-item .nav-link span, .tpl-left-nav-sub-menu a span,
    .lime-sidebar .lime-sidebar-inner ul li ul.sub-menu li a,
.lime-sidebar .lime-sidebar-inner ul li a{font-size:22px;}
</style>
    
</head>
<body CLASS="background--blur sidebar-show">

<div class="lime-sidebar " style="
background:#004c85;
">
    <div class="lime-sidebar-inner slimscroll">
        <ul class="accordion-menu">

            <li class="">
                <a style="   color: #DDD!important;font-weight:bold" href="<%=basePath%>"><i class="fa fa-file"></i>
                轻博客 BlOg
                    </a>

            </li>





            <li class="sidebar-title">
                个人中心
            </li>





            <c:if test="${user.type eq 5 }">


                
                
                <li>
                    <a href="#"><i class="material-icons">person_outline</i>用户管理
                        <i class="material-icons has-sub-menu">keyboard_arrow_left</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="<%=basePath %>users/users/list" target="mainframe">
                                <i class="am-icon-angle-right"></i>
                                <span>管理用户</span>

                            </a>
                        </li>
                        <li>
                            <a href="<%=basePath %>users/users/add" target="mainframe">
                                <i class="am-icon-angle-right"></i>
                                <span>新增用户</span>
                            </a>
                        </li>
                    </ul>
                </li>


                




                <li>
                    <a href="#"><i class="material-icons">bar_chart</i>公告/信息
                        <i class="material-icons has-sub-menu">keyboard_arrow_left</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="<%=basePath %>content/content/list" target="mainframe">
                                <i class="am-icon-angle-right"></i>
                                <span>信息管理</span>

                            </a>
                        </li>
                        <li>
                        <a href="<%=basePath %>category/category/list" target="mainframe">
                                <i class="am-icon-angle-right"></i>
                                <span>类目管理</span>

                            </a>

                        </li>
                    </ul>
                </li>

                
<li>
                    <a href="#"><i class="material-icons">cloud_queue</i>系统设置
                        <i class="material-icons has-sub-menu">keyboard_arrow_left</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="<%=basePath %>tags/tags/list" target="mainframe">
                                <i class="am-icon-angle-right"></i>
                                <span>标签管理</span>

                            </a>

                           
                        </li>
                       
        <li> <a target="mainframe" href="<%=basePath %>ordertab/ordertab/list">    <i class="am-icon-angle-right"></i>  举报信息 </a> </li>
        
      
                    </ul>
                </li>

                
</c:if>

    
            <li>
                <a href="#"><i class="material-icons">dashboard</i>博文管理
                    <i class="material-icons has-sub-menu">keyboard_arrow_left</i></a>
                <ul class="sub-menu">
                <c:if test="${usertype eq 5 }">
                <li>
                        <a href="<%=basePath %>article/article/list" target="mainframe">
                            <i class="am-icon-angle-right"></i>
                            <span>博文管理</span>

                        </a>
                    </li>
                    </c:if>
                  
                    <li>
                        <a href="<%=basePath %>article/article/mylist" target="mainframe">
                            <i class="am-icon-angle-right"></i>
                            <span>我的文章</span>

                        </a>
                    </li>
                    <li>

                        <a href="<%=basePath %>article/article/add" target="mainframe">
                            <i class="am-icon-angle-right"></i>
                            <span>发布文章</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="material-icons">inbox</i>相册管理
                    <i class="material-icons has-sub-menu">keyboard_arrow_left</i></a>
                <ul class="sub-menu">
                    <li>
                        <a href="<%=basePath %>album/album/mylist" target="mainframe">
                            <i class="am-icon-angle-right"></i>
                            <span>我的相册</span>

                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath %>album/album/add" target="mainframe">
                            <i class="am-icon-angle-right"></i>
                            <span>创建相册</span>
                        </a>
                    </li>
                </ul>
            </li>
            
            
          <li>
                <a href="#"><i class="material-icons">dashboard</i>个人信息
                    <i class="material-icons has-sub-menu">keyboard_arrow_left</i></a>
                <ul class="sub-menu">
                     <li><a target="mainframe" href="<%=basePath%>users/users/profile"><span class="am-icon-bell-o"></span> 个人资料</a></li>
                        <li><a target="mainframe" href="<%=basePath%>users/users/password"><span class="am-icon-cog"></span> 安全设置</a></li>
                </ul>
            </li>
            <!-- 
            <li class=""> <a href="<%=basePath %>application/quit?retUrl=homepage" > 
       <i class="fa fa-file"> </i> 
              退出系统<span class="caret"> </span> </a>
      <ul class="sub-menu" >
        
        
      </ul>
    </li>  -->

        </ul>
    </div>
</div>




<div class="lime-header" style="transform:none;width:auto;margin-left:300px">
    <nav class="navbar navbar-expand-lg">
        <section class="material-design-hamburger navigation-toggle">
            <a href="javascript:void(0)" class="button-collapse material-design-hamburger__icon">
                <span class="material-design-hamburger__layer"></span>
            </a>
        </section>
        <a class="navbar-brand " href="#">Hi,${username }！</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="material-icons">keyboard_arrow_down</i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link le theme--link" href="<%=basePath%>">
                        <i class="material-icons">home</i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="material-icons">more_vert</i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                       
                        <li class="divider"></li>
                        <li><a href="<%=basePath%>application/quit?retUrl=index.html"><span class="am-icon-power-off"></span> 退出系统</a></li>



                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div class="lime-container">
    <div class="lime-body" style="margin-left: 85px;;padding-left:50px;">
        <div class="">
            <div class="row">
                <iframe name="mainframe" src="" id="iframe" style="min-height:1200px;overflow:hidden;" width="100%" height="100%" frameborder="0"></iframe>

            </div>
        </div>
    </div>
    </div>
</div>

<input type="hidden" name="mess" id="msg" value=""/>
<a href="javascript:;" id="showMsgBtn" onclick="showMsg()"></a>


<!-- Javascripts -->
<script src="<%=basePath %>static/theme/assets/plugins/jquery/jquery-3.1.0.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/bootstrap/popper.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/chartjs/chart.min.js"></script>
<script src="<%=basePath %>static/theme/assets/plugins/apexcharts/dist/apexcharts.min.js"></script>
<script src="<%=basePath %>static/theme/assets/js/lime.min.js"></script>
<script src="<%=basePath %>static/theme/assets/js/pages/dashboard.js"></script>
<script src="<%=basePath %>static/layer/layer.js"></script>

<script>
    function showMsg() {
        var msg = $("#msg").val();
        layer.alert(msg);
    }
</script>
</body>
</html>