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
<div style="
    border-top: 1px solid #eceeef;width:100%;">

</div>
    <!--content start-->
     <!--content start-->
    <div class="container">
       <!--left-->
        <div class="left" id="c_left">
           <div class="s_tuijian">
           <h2>行程规划分享</h2>
           </div>
          <div class="content_text">
          
           <c:forEach items="${requestScope.list }" var="u" varStatus="st">
           <!--wz-->
           <div class="wz">
            <h3><a href="" >${u.title }</a></h3>
             <dl>
               <dt><img src="<%=basePath %>${u.thumb}" width="200"  height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">${u.description }
                  <c:forEach items="${u.ts }" var="u1">
                                     <span style="margin-right:5px;background:#F55522;color:#fff;" class="label label-success">
                                     ${u1.title }
                                     </span>
                                     </c:forEach> 
                 </p>
               <p class="dd_text_2">
               <span class="left author">${u.u.username }</span>
      

               
               <span class="left yd">
               <a href="<%=basePath %>application/viewNote?id=${u.id}" title="阅读全文">阅读全文</a>
               </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>
           <!--wz end-->
           
           </c:forEach>
           
           
              
                             
           </div>
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
    <!--content end--><jsp:include page="footer.jsp"></jsp:include>