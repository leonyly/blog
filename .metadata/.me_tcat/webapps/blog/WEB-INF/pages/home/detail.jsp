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

.widget__header {
    padding: 0 15px;
    height: 54px;
    font-family: Montserrat;
    font-size: 14px;
    font-weight: 700;
    line-height: 52px;
    text-transform: uppercase;
    color: #fff;
    background-color: #001a33;
    box-shadow: inset 0 -2px 0 #ffea00;
}.blog-category__link {
    padding: 15px;
    display: block;
    text-decoration: none;
    list-style:none;
}
.blog-category__item{
    list-style:none;
}

.article__body blockquote {
    position: relative;
    margin-bottom: 3em;
    padding: 52px 20px 60px;
    font-family: Montserrat;
    font-size: 14px;
    font-weight: 700;
    line-height: 1.71429;
    text-align: center;
    text-transform: uppercase;
    color: #204866;
    background-color: #f5f9fc;
}
.article__body blockquote:after, .article__body blockquote:before {
    position: absolute;
    font-size: 56px;
    font-weight: 400;
    line-height: 1;
    color: #d6e3ed;
}

.btn11 {
    position: relative;
    padding: 0 33px;
    display: inline-block;
    height: 48px;
    font-size: 13px;
    font-weight: 700;
    line-height: 48px;
    text-align: center;
    vertical-align: middle;
    text-transform: uppercase;
    text-decoration: none;
    color: #02050a;
    background-color: #ffea00;
    border: none;
    border-radius: 2px;
    box-shadow: inset 0 -2px 0 #ffd200;
    transition: background-color .3s;
}
</style>
   <div class="content">
   <div class="dreamcrub">
		
   <section class="page-header" style="margin-top: 0px; background: url(<%=basePath%>static/banner.gif) no-repeat;">
    <div class="container">
        <h2>
       ${model.product_name }
        </h2>
        <ul class="thm-breadcrumb list-unstyled">
            <li><a href="homepage">Home</a></li>
            <li><span>Order ing</span></li>
        </ul><!-- /.thm-breadcrumb -->
    </div><!-- /.container -->
</section>
			   </div>
		<div class="container">
		


<div class="col-md-9">
<article class="article ">
<br>
	<h2 class="article__title">
							${model.product_name }
							
							</h2>
							<br>

						<figure class="article__figure">
							<img STYLE="max-width:100%" src="<%=basePath %>${model.thumb }" alt="">
						</figure>
						<header class="article__header">
						
							<div class="article__meta">
								<div class="article__meta-item">
								
								
										
									
								</div>
								
							</div>
							
							
						</header>
						<div class="article__body">
						
						<blockquote>
						${model.description }
						.</blockquote>
						
							<p>
								${model.content }
							</p>
						</div>
					</article>
					
					<a style="display:block;" class="btn btn-lg btn-danger"
					 href="<%=basePath %>application/buy?id=${model.id}">
					 
						
						    <span> 我要预定</span>
					</a>	
									
</div>

<div class="col-md-3">

<div class="widget"><div class="widget__body">
<div class="btn11 btn-success" style="background:#222;width:100%;height:150px;line-height:150px;color:#fff;
font-size:38px;
">
								￥${model.price }
								</div>
								</div>
								</div>


<div class="widget">
							
							<div class="widget__body">
								<div class="blog-category">
								
								
									<div class="sidebar__single sidebar__category">
                        <h3 class="sidebar__title">栏目</h3><!-- /.sidebar__title -->
                        <ul class="sidebar__category-list list-unstyled">

                            <c:forEach items="${requestScope.catelist }" var="u" varStatus="st">
                                <li><a href="<%=basePath %>application/categoies?id=${u.id}">${u.title }</a></li>
                            </c:forEach>
                        </ul><!-- /.sidebar__category-list list-unstyled -->
                    </div><!-- /.sidebar__single sidebar__category -->

								</div>
							</div>
						</div>
</div>




		</div>
		</div>
    <!--content end-->
   <jsp:include page="footer.jsp"></jsp:include>