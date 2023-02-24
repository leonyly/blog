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
           <div class="s_tuijian">
           <h2>智能<span>推荐</span></h2>
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
                 
                 </p>
               <p class="dd_text_2">
               <span class="left author">系统</span><span class="left sj">时间:${u.created }</span>
               
               <span class="left yd">
               <a href="<%=basePath %>application/viewInfo?id=${u.id}" title="阅读全文">阅读全文</a>
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
        
         <div class="clear"></div>
         
    </div>
    <!--content end--><jsp:include page="footer.jsp"></jsp:include>