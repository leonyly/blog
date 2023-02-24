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
<style>
            .ml20, .ml-20 {
    margin-left: 0px !important;
    margin-top:10px;
}

.btn {
    -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.05);
    box-shadow: 0 1px 1px rgba(0,0,0,0.05);
}

.btn-lg, .btn-group-lg>.btn {
    padding: 10px 16px;
    font-size: 18px;
    line-height: 1.33;
    border-radius: 6px;
}

.btn-primary {
    color: #fff;
    background-color: #009a61;
    border-color: #008151;
}

.btn {
    display: inline-block;
    margin-bottom: 0;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    white-space: nowrap;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42858;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

.widget-answers__item {
    margin-bottom: 10px;
    padding-bottom: 0px;
    border-bottom: 1px solid #ddd;
}

.widget-answers__item .post-offset {
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    -webkit-transition: all 1s ease;
    transition: all 1s ease;
}

.post-offset {
    margin-left: 65px;
}

.widget-answers__item .post-offset .answer.fmt {
    margin-bottom: 15px;
}
.widget-answers__item .answer__info--author {
    padding-left: 0;
    line-height: 32px;
}
.fmt {
    line-height: 1.6;
    word-wrap: break-word;
}
.left img{max-width:100%;}



        </style>

<div class="container">

</div>
    <!--content start-->
     <!--content start-->
    <div id="content">
       <!--left-->
         <div class="left" style="max-width:600px;"  id="news">


             <div class="tour-details__content">
                 <div class="tour-two__top">
                     <div class="tour-two__top-left">
                         <h3>${model.title }</h3>
                         <div class="tour-one__stars">
                             <i class="fa fa-star"></i><i class="fa fa-star"></i>
                             <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star inactive"></i> ${model.created }
                         </div><!-- /.tour-one__stars -->

                     </div><!-- /.tour-two__top-left -->
                     <div class="tour-two__right">

                     </div><!-- /.tour-two__right -->
                 </div><!-- /.tour-two__top -->


                 <div class="tour-details__gallery-carousel swiper-container-initialized swiper-container-horizontal">
                     <div class="swiper-wrapper" style="transform: translate3d(-3080px, 0px, 0px); transition-duration: 1400ms;">
                         <div class="swiper-slide" style="width: 770px;">
                             <div class="tour-details__gallery-image">
                                 <img src="<%=basePath%>${model.thumb}" alt="">

                             </div><!-- /.tour-details__gallery-image -->
                         </div><!-- /.swiper-slide -->

                     </div><!-- /.swiper-wrapper -->
                     <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div><!-- /.tour-details__gallery-carousel -->


                 <h3 class="tour-details__title">Describ</h3><!-- /.tour-details__title -->
                 <p>
                     ${model.description}
                 </p>
                 <h3 class="tour-details__subtitle">正文/CONTENTS</h3><!-- /.tour-details__subtitle -->

                 <div style="margin-top:50px;padding:5px;border:1px solid #ddd;margin-bottom:15px;width:100%;"  class="news_text">
                     ${model.bodytext }
                 </div>
                 </div><!-- /.tour-details__review-form -->





     
     
        
     </div>
           
     
     
        
         <!--end left -->
        <div class="col-md-4 pb--60">
      
      <div class="sidebar__single sidebar__category">
                        <h3 class="sidebar__title">栏目</h3><!-- /.sidebar__title -->
                        <ul class="sidebar__category-list list-unstyled">

                            <c:forEach items="${requestScope.catelist }" var="u" varStatus="st">
                                <li><a href="<%=basePath %>application/categoies?id=${u.id}">${u.title }</a></li>
                            </c:forEach>
                        </ul><!-- /.sidebar__category-list list-unstyled -->
                    </div><!-- /.sidebar__single sidebar__category -->
      </div>
         <div class="clear"></div>
         
    </div>
    <script>
    </script>
<jsp:include page="footer.jsp"></jsp:include>