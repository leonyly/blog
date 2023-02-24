<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header2.jsp"></jsp:include>
<link rel="stylesheet" href="<%=basePath%>static/slide/css/style.min.css">
    <div class="banner-three__wrap container ">


        <section class="home-banner home-slider-two hide" style="min-height:  450px;">




            <div class="dowebok" data-slidizle style="min-height:  450px;">
                <ul data-slidizle-content>
<c:forEach items="${requestScope.adlist }" var="u" varStatus="st">
                    <li onclick="javascript:location.href='${u.url}';" style="min-height: 450px;width: 100%; background-image: url('<%=basePath%>${u.thumb}')"></li>

</c:forEach>
                </ul>

                <div data-slidizle-next>
                    <i class="fa fa-arrow-right"></i>
                </div>
                <div data-slidizle-previous>
                    <i class="fa fa-arrow-left"></i>
                </div>

                <ul data-slidizle-navigation></ul>
            </div>
        </section>

        <div class="banner-three__floated-text">Travel</div><!-- /.banner-three__floated-text -->

        <section class="banner-three">
            <div class="container">
                <div class="banner-three__top">
                    <div class="banner-three__top-inner">
                        <h4>Welcome to light blog</h4>
                    </div><!-- /.banner-three__top-inner -->
                </div><!-- /.banner-three__top -->
            </div><!-- /.container -->
        </section><!-- /.banner-three -->

        <div class=" banner-three__box">
            <div class="container">
                <div class="row" style="text-align:center;">
<c:forEach items="${requestScope.alist }" var="u" varStatus="st">
                    <div class="banner-three__col" style="
                    flex: 1 1 30%;
    max-width: 30%;
                    ">
                        <div class="banner-three__box-single" style="cursor:pointer;" onclick="javascript:location.href='<%=basePath %>application/viewNote?id=${u.id}';">
                            <img src="<%=basePath %>${u.thumb}" alt="">
                        </div><!-- /.banner-three__box-single -->
                    </div><!-- /.banner-three__col -->
</c:forEach>

                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.banner-three__box -->

    </div><!-- /.banner-three__wrap -->
    <section class="hide tour-search-one__home-three">
        <div class="container">
            <div class="block-title text-center">
                <p>Find some friends </p>

            </div><!-- /.block-title -->

        </div><!-- /.container -->
    </section>

    <section class=" features-two" style="padding-top: 20px;">
        <div class="features-two__bg" style="background-image: url(<%=basePath %>static/ss/assets/images/backgrounds/footer-bg-1-1.png);"></div>
        <!-- /.features-two__bg -->
        <div class="container">
            <div class="row">

<c:forEach items="${requestScope.ulist }" var="u" varStatus="st">
                <div class="col-lg-2">
                    <div onclick="javasript:location.href='<%=basePath %>application/ucenter?id=${u.id}';" class="features-two__single">
                        <img style=" cursor: pointer; width: 170px;height: 170px;border-radius: 100%" src="<%=basePath %>${u.thumb}" alt="">
                        <h3>${u.username}</h3>

                    </div><!-- /.features-two__single -->
                </div><!-- /.col-lg-4 -->
</c:forEach>
                
                

            </div><!-- /.row -->
           
        </div><!-- /.container -->
    </section><!-- /.features-two -->
<jsp:include page="footer.jsp"></jsp:include>


<script src="<%=basePath%>static/slide/js/jquery.slidizle.js"></script>

<script>
    $(function() {
        $('.dowebok').slidizle();
    });


    $(".py").each(function () {
        var zh = $(this).next("h2").eq(0).html();
        console.log(zh)
        $(this).html(pinyin.getCamelChars(zh));
    });

</script>

