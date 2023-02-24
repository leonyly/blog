<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header.jsp"></jsp:include>
<style>
.albox{overflow:hidden;}
.albox:hover{border:0px solid #c00;background:#fff;cursor:pointer;}
.albox img{ transition: all 0.6s;  }
.albox img:hover{ transform: scale(1.4);  }
</style>
    <!--content start-->
    <div id="content" style="text-align:center;">
         <!--left-->
          <c:forEach items="${requestScope.list }" var="u" varStatus="st">
           <div class="am-u-md-3 albox" style="width:30%;display:inline-block">
           <a href="<%=basePath%>application/photo?aid=${u.id}" style="overflow: hidden">
                                   	<img style="width:100%;height:350px;" src="<%=basePath %>${u.thumb}">
                                   	</a>
                   ${u.title }
                                   </div>
          </c:forEach>
         <div class="clear"></div>
    </div>
    <!--content end-->
   <jsp:include page="footer.jsp"></jsp:include>