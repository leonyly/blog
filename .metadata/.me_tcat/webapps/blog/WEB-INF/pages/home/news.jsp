<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header.jsp"></jsp:include>
    <!--content start-->
    <div id="content">
         <!--left-->
         <div class="left" id="c_left">
           <div class="s_tuijian">
           <h2>用户<span>动态</span></h2>
           </div>
          <div class="content_text">
          
           <c:forEach items="${requestScope.list }" var="u" varStatus="st">
           <!--wz-->
           <div class="wz">
            <h3><a href="<%=basePath %>application/viewNote?id=${u.id}" >${u.title }</a></h3>
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
               <span class="left author">${u.u.username }</span><span class="left sj">时间:${u.created }</span>
               
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
         <!--left end-->
         <!--right-->
         <div class="right" id="c_right">
          <div class="s_about">
          <h2>关于博主</h2>
           <img src="<%=basePath %>${zuser.thumb}" width="230" height="230" alt="博主"/>
           <p>博主：${zuser.username}/${zuser.realname}</p>
           <p>年龄：${zuser.age}岁</p>
           <p>邮箱：${zuser.email}</p>
           <p>
           <a href="http://wpa.qq.com/msgrd?v=3&uin=${zuser.qq}&site=qq&menu=yes" title="联系博主"><span class="left b_1"></span>
           </a>
           
           <div class="clear"></div>
           </p>
          </div>
          <!--栏目分类-->
           
           <!--end-->
           
         </div>
         <!--right end-->
         <div class="clear"></div>
    </div>
    <!--content end-->
   <jsp:include page="footer.jsp"></jsp:include>