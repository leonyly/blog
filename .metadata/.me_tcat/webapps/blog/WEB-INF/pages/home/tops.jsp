<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header2.jsp"></jsp:include>
<style>
.albox{overflow:hidden;}
.albox:hover{border:0px solid #c00;background:#fff;cursor:pointer;}
.albox img{ transition: all 0.6s;  }
.albox img:hover{ transform: scale(1.4);  }
</style>
    <!--content start-->
     <!--content start-->
    <div id="content">
       <!--left-->
        <div class="left" id="c_left">
           <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>&gt;<h1>好友圈</h1></div>
           </div>
          <div class="content_text" style="text-align:center;">


           
           
              
                             
           </div>
         </div>
         <!--end left -->
        <section class="features-two">
            <div class="features-two__bg" style="background-image: url(<%=basePath %>static/ss/assets/images/backgrounds/footer-bg-1-1.png);"></div>
            <!-- /.features-two__bg -->
            <div class="container">
                <div class="row">

                    <c:forEach items="${requestScope.list }" var="u" varStatus="st">
                        <div class="col-lg-3">
                            <div onclick="javasript:location.href='<%=basePath %>application/ucenter?id=${u.id}';" class="features-two__single">
                                <img style=" cursor: pointer; width: 170px;height: 170px;border-radius: 100%" src="<%=basePath %>${u.thumb}" alt="">
                                <h3>${u.username}</h3>

                            </div><!-- /.features-two__single -->
                        </div><!-- /.col-lg-4 -->
                    </c:forEach>



                </div><!-- /.row -->
                <div class="text-center">
                    <a href="<%=basePath %>application/tops" class="thm-btn features-two__btn">发现更多</a><!-- /.thm-btn -->
                </div><!-- /.text-center -->
            </div><!-- /.container -->
        </section><!-- /.features-two -->
        
         <div class="clear"></div>
         
    </div>
    <!--content end--><jsp:include page="footer.jsp"></jsp:include>