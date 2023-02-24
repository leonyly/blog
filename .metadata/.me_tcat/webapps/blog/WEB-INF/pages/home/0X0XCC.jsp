<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>  轻博客系统</title>



    <link href="<%=basePath %>static/home/styles/SBGG.css" type="text/css" rel="stylesheet" />
    <link href="<%=basePath %>static/home/styles/global.css" type="text/css" rel="stylesheet" />
    <script src="<%=basePath %>static/assets/js/jquery.min.js" language="javascript" />
    <script src="<%=basePath %>static/home/script/SBGG.js" language="javascript" />
    <script src="<%=basePath %>static/home/Scripts/swfobject_modified.js" type="text/javascript"></script>


    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/font-awesome.min.css">

    <!-- ==== Bootstrap Framework ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/bootstrap.min.css">

    <!-- ==== Owl Carousel Plugin ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/owl.carousel.min.css">

    <!-- ==== Magnific Popup Plugin ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/magnific-popup.min.css">

    <!-- ==== Main Stylesheet ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/style.css">

    <!-- ==== Responsive Stylesheet ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/responsive-style.css">

    <!-- ==== Color Scheme Stylesheet ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/colors/color-1.css" id="changeColorScheme">

    <!-- ==== Custom Stylesheet ==== -->
    <link rel="stylesheet" href="<%=basePath %>static/yyd/css/custom.css">


    <link rel="stylesheet" href="<%=basePath %>static/ucenter/css/index.css"/>
    <link rel="stylesheet" href="<%=basePath %>static/ucenter/css/style.css"/>
    <script type="text/javascript" src="<%=basePath %>static/ucenter/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/ucenter/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/ucenter/js/common.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/ucenter/js/waterfall.js" ></script>





   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/animate.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/bootstrap.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/owl.carousel.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/magnific-popup.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/fontawesome-all.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/swiper.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/bootstrap-select.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/tripo-icons.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/jquery.mCustomScrollbar.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/bootstrap-datepicker.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/vegas.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/nouislider.min.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/nouislider.pips.css">

   <!-- template styles -->
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/style.css">
   <link rel="stylesheet" href="<%=basePath %>static/ss/assets/css/responsive.css">
</head>

<body>
<div class="preloader">
   <img src="<%=basePath %>static/ss/assets/images/loader.png" class="preloader__image" alt="">
</div><!-- /.preloader -->
<div class="page-wrapper">

   <header class="main-nav__header-three ">
      <nav class="header-navigation stricky">
         <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="main-nav__logo-box">
               <a href="homepage" class="main-nav__logo">
                  <img src="<%=basePath %>static/ss/assets/images/logo-light.png" class="main-logo" width="123" alt="Awesome Image" />
               </a>
               <a href="#" class="side-menu__toggler"><i class="fa fa-bars"></i>
                  <!-- /.smpl-icon-menu --></a>
            </div><!-- /.logo-box -->
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="main-nav__main-navigation">
               <ul class=" main-nav__navigation-box">


                  <c:forEach items="${requestScope.catelist }" var="u" varStatus="st">
                     <li><a href="<%=basePath %>application/categoies?id=${u.id}">${u.title }</a></li>
                  </c:forEach>

                  <li><a href="<%=basePath %>application/hots">行程规划</a></li>
                  <li><a href="<%=basePath %>application/tops">旅友</a></li>

                  <c:if test="${user.username==null}">
                     <li><a href="<%=basePath %>application/login">登录</a></li>
                     <li><a href="<%=basePath %>application/reg">注册</a></li>
                  </c:if>
                  <c:if test="${user.username!=null}">
                     <li><a href="<%=basePath %>application/index">欢迎您，${user.username }</a></li>
                     <li><a href="<%=basePath %>application/quit?retUrl=homepage">退出</a></li>
                  </c:if>


               </ul>
            </div><!-- /.navbar-collapse -->
            <div class="main-nav__right">
               <a href="<%=basePath %>application/index" class="thm-btn header-three__btn">个人中心</a>
               <!-- /.thm-btn header-three__btn -->
            </div><!-- /.main-nav__right -->
         </div>
         <!-- /.container -->
      </nav>
   </header><!-- /.site-header -->



   <!--header start-->
    <div id="header">
      <h1>
      <a href="<%=basePath %>">广场</a>
      |
      ${zuser.username }的主页</h1>
      <p>${zuser.position }</p>    
    </div>
     <!--header end-->
    <!--nav-->
     <div id="nav">
        <ul>
         <li><a href="<%=basePath %>application/ucenter?id=${zuser.id}">首页</a></li>         
         <li><a href="<%=basePath %>application/news?id=${zuser.id}">个人动态</a></li>
         <li><a href="<%=basePath %>application/album?id=${zuser.id}">相册展示</a></li>         
         <li><a href="<%=basePath %>application/guestbook?id=${zuser.id}">留言板</a></li>
         <c:if test="${zuser.id eq user.id }">
         <li><a href="<%=basePath %>application/suggest?id=${zuser.id}">智能推荐</a></li>
         </c:if>
         
         <div class="clear"></div>
        </ul>
      </div>
       <!--nav end-->
    