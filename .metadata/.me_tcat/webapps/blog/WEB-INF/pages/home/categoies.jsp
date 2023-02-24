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


<section class="blog-list">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">

<c:forEach items="${requestScope.infoList }" var="u">
                <div class="blog-two__single blog-one__single">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="blog-one__image">
                                <img src="<%=basePath%>${u.thumb}" alt="">
                                <a href="<%=basePath%>application/viewInfo?id=${u.id}"><i class="fa fa-long-arrow-alt-right"></i></a>
                            </div><!-- /.blog-one__image -->
                        </div><!-- /.col-md-6 -->
                        <div class="col-md-6 d-flex">
                            <div class="blog-two__content my-auto">
                                <ul class="list-unstyled blog-one__meta">
                                    <li><a href="<%=basePath%>application/viewInfo?id=${u.id}"><i class="far fa-user-circle"></i> ${u.created}</a></li>

                                </ul><!-- /.list-unstyled blog-one__meta -->
                                <h3><a href="<%=basePath%>application/viewInfo?id=${u.id}">${u.title}</a></h3>
                                <p>${u.description}</p>
                                <a href="<%=basePath%>application/viewInfo?id=${u.id}" class="blog-two__link">Read More</a>
                            </div><!-- /.blog-two__content -->
                        </div><!-- /.col-md-6 -->
                    </div><!-- /.row -->
                </div><!-- /.blog-two__single -->

</c:forEach>




            </div><!-- /.col-lg-8 -->
            <div class="col-lg-4">
                <div class="sidebar">
                    <div class="sidebar__single sidebar__search">
                        <form action="<%=basePath%>application/categoies" class="sidebar__search-form">
                            <input type="search" name="key" placeholder="搜一搜">
                            <button type="submit"><i class="tripo-icon-magnifying-glass"></i></button>
                        </form><!-- /.sidebar__search-form -->
                    </div><!-- /.sidebar__single -->
                    
                    <div class="sidebar__single sidebar__category">
                        <h3 class="sidebar__title">栏目</h3><!-- /.sidebar__title -->
                        <ul class="sidebar__category-list list-unstyled">

                            <c:forEach items="${requestScope.catelist }" var="u" varStatus="st">
                                <li><a href="<%=basePath %>application/categoies?id=${u.id}">${u.title }</a></li>
                            </c:forEach>
                        </ul><!-- /.sidebar__category-list list-unstyled -->
                    </div><!-- /.sidebar__single sidebar__category -->


                </div><!-- /.sidebar -->
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

     <!--content start-->
    <div >
       <!--left-->
       
       
       <section class="banner--section">
            <div class="container">
                <div class="row">
                
                 <c:forEach items="${requestScope.infoList }" var="u">
                    <div class="col-md-6 pb--60" data-mh="banner02" style="height: 444.375px;">
                        <!-- Banner Item Start -->
                        <div class="banner--item style--2 bg--img" data-overlay="0.5" data-rjs="2" 
                        style="background-image: url(<%=basePath%>${u.thumb });">
                            <!-- Banner Content Start -->
                            <div class="banner--content p--60-30 text-white text-center">
                                <div class="tag" data-overlay="0.5" data-overlay-color="primary">
                                    <p><a href="<%=basePath%>application/viewInfo?id=${u.id}" class="btn-link">${u.created }</a></p>
                                </div>

                                <div class="title">
                                    <h2 class="h2 text-white"><a href="<%=basePath%>application/viewInfo?id=${u.id}" class="btn-link">
                                    ${u.title }</a></h2>
                                </div>

                                <div class="desc">
                                    <p>
                                    ${u.description }
                                    </p>
                                </div>

                                <div class="action">
                                    <a href="<%=basePath%>application/viewInfo?id=${u.id}" class="btn btn-white">Read More</a>
                                </div>
                            </div>
                            <!-- Banner Content End -->
                        </div>
                        <!-- Banner Item End -->
                    </div>
                    </c:forEach>
                    

                    <div class="col-md-6 pb--30" data-mh="banner02" style="height: 444.375px;">
                        
                    </div>
                </div>
            </div>
        </section>
        
         <div class="clear"></div>
         
    </div>
    <!--content end-->
<jsp:include page="footer.jsp"></jsp:include>