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
    margin-bottom: 20px;
    padding-bottom: 20px;
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




        </style>
    <!--content start-->
    <div id="content">
         <!--left-->
         <div class="left" id="guestbook" style="height:auto">
           <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>&gt;<h1>留言板</h1></div>
           </div>

           
           <div>



               <h3 style="margin-top: 40px;" class="tour-details__title">   Guests </h3>

               <div class="tour-details__plan">
<c:forEach items="${requestScope.list }" var="u" varStatus="st">
                   <div class="tour-details__plan-single">
                       <div class="tour-details__plan-count">
                           ${st.index+1}
                       </div><!-- /.tour-details__plan-count -->
                       <div class="tour-details__plan-content">
                           <h3>${u.u.username} </h3>
                           <span>${u.created}</span>
                           <p>${u.content}
                           </p>

                       </div><!-- /.tour-details__plan-content -->
                   </div><!-- /.tour-details__plan-single -->
</c:forEach>


               </div>

           
           <div class="row" id="cmtWP" style="padding-left:10px;">


        <hr />
  <c:if test="${user.username!=null}">   
        <form action="<%=basePath%>application/addpost" method="post" style="width: 100%">
        <h2>我要留言</h2> <br />

        <textarea id="getmycode" class="getCodePane" required name="content" rows="2" wrap="off" style="width:100%;" >
            </textarea>
        <input type="hidden" name="uid" value="${zuser.id }">
        <button type="submit" id="answerIt" data-id="1010000004182721" class="btn btn-lg btn-primary ml20">提交留言
                        </button>
       </form>
</c:if>

       
        </div> 
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
   <script src="<%=basePath %>static/kindeditor-4.1.10/kindeditor-min.js"></script>
				<script>
					KindEditor.ready(function (K) {
						editor = K.create('textarea[name="content"]', {
							uploadJson: '<%=basePath %>static/kindeditor-4.1.10/php/upload_json.php',
							fileManagerJson: '<%=basePath %>static/kindeditor-4.1.10/php/file_manager_json.php',
							allowFileManager: true,
							items : ['source',
								'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
								'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
								'insertunorderedlist', '|', 'emoticons', 'image', 'link','fullscreen'],
							afterBlur: function () {
								this.sync();
							}
						});
					});


				</script>