<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String success = request.getParameter("success");
%>
<jsp:include page="header2.jsp"></jsp:include>
<style>
.albox{overflow:hidden;}
.albox:hover{border:0px solid #c00;background:#fff;cursor:pointer;}
.albox img{ transition: all 0.6s;  }
.albox img:hover{ transform: scale(1.4);  }
blockquote:before,blockquote:after{display:none}
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

	<% 
	String message = request.getParameter("message");
	if(message!=null){ %>
					<script>
					alert("<%=message %>");					
					</script>
					<% } %>
					</span>
    <!--content start-->
     <!--content start-->
    <div id="content">
    
      <div class="col-md-8 pb--60">
       <!--left-->
         <div class="left" id="news">
           <div class="weizi">
           <div class="wz_text">当前位置：<a href="#">首页</a>><a href="#">
           ${model.title }
           </a>
           </div>
           </div>
           <div class="news_content">
                  <div class="news_top" >
                    <h1> ${model.title }</h1>
                    <div style="padding:15px 0;">
                    <a style="color:#fff"
                       class="label label-danger" href="<%=basePath%>application/support?id=${model.id}">
                     点赞： ${model.support }
                      </a>
                      <span class="left sj" style="width:auto;margin-left:90px;">时间:${model.created }</span>
                      <span class="left fl">
                      
                      
                      
                      浏览：${model.click }
                      
                        <c:if test="${user.username!=null}">  
                      <!-- |
                      <a href="<%=basePath%>application/forward?id=${model.id}">转发</a>
                       -->
                      </c:if>
                      </span>
                      <span class="left author fl" style="width:auto!important;display:inline-block;"
                      <a href="">
                      ${auser.username }
                      </a>
                      </span>
                    </div>
                  
                  
                  
                    <div class="clear"></div>
                    <br><br>
                  </div>
                  <div style="clear:both"></div>
                  <div style="display:block;text-align:center;">
                  
                  <ul class="post--tags  " style="margin:0px;text-align:center;">
                     <c:forEach items="${ts }" var="u1">
                                     <li style="float:none;display:inline-block">
                                     <a>
                                     ${u1.title }
                                     </a>
                                     </li>
                                     </c:forEach> </ul>
                  </div>
                  <a style="display:block;" class="btn btn-lg btn-danger"
					 href="<%=basePath %>application/buy?id=${model.id}">
					 
						
						    <span> 举报</span>
					</a>	
                  <blockquote style="margin-top:25px">
                                    <p> 
                                    
                                    
                                    ${model.description }
                                    </p>
                                </blockquote>
                                
                                <c:if test="${not empty model.vpath }">
                                	<div style="padding:15px 0">
                                		<c:if test="${model.suffix eq 'mp4' }">
                                		<link rel="stylesheet" href="<%=basePath %>static/player/css/danmuplayer.css">
                        <script src="<%=basePath %>static/player/js/lib/jquery-1.11.1.min.js"></script>
                        <script src="<%=basePath %>static/player/js/danmuplayer.js"></script>
                        <div id="danmup"></div>

                        <script>
                            $("#danmup").danmuplayer({
                                src:"<%=basePath %>${model.vpath}",       //视频源
                                width:"100%",            //视频宽度
                                height:445            //视频高度
                            });
                        </script>
                                		</c:if>
                                		
                                		<c:if test="${model.suffix eq 'mp3' }">                            		
                                		<audio style="display: block" controls="controls" autoplay="autoplay" src="<%=basePath %>${model.vpath}" id="mymusic"></audio>                                		
                                	</c:if>    </div>
                                </c:if>
                                
                              
                    
                    <div style="margin-top:50px;padding:15px;border:1px solid #ddd;
                    margin-bottom:15px;width:100%;"  class="news_text">
                    ${model.bodytext }
                     
                    </div>
                     
           </div>
     
     
         <div class="row" id="cmtWP" style="width: 100%;padding-left:10px;">
        <h2 style="width: 100%;
        ">用户评论</h2>
        <br /><br />

       
 <c:forEach items="${requestScope.list2 }" var="u" varStatus="st">
        
        <article class="clearfix widget-answers__item" id="a-1020000004183223" STYLE="width: 100%">
      

        <div class="post-offset" style="margin-left:0px;">

              <div class="row answer__info--row">
                <div class="post-opt col-md-8 col-sm-8 col-xs-10" style="border-bottom:1px dotted #f1f1f1;">
                    <ul class="list-inline mb0"><li class="pr15">
                        <a href="JavaScript:;"> <a class="answer__info--author-name" title="" href="JavaScript:;">
                        ${u.u.username }
                        </a><span class="answer__info--author-rank"></span> ${u.created }</a>

                                                </li></ul>                </div>

                
            </div>
            <div class="answer fmt" data-id="1020000004183223" style="padding:15px 0;border-bottom:0px solid #ddd;">
                                    <p>${u.content }</p>
                            </div>

            
                        
          


          


        </div>
            </article>

</c:forEach>
             


        <hr />
  <c:if test="${user.username!=null}">   
        <form style="width:100%;" action="<%=basePath%>application/addpost2" method="post">
        <h2 style="
        ">我要评论</h2> <br />

        <textarea id="getmycode" class="getCodePane" required name="content" rows="5"
         wrap="off" style="width:100%;" >
            </textarea>
        <input type="hidden" name="id" value="${model.id }">
        <button type="submit" id="answerIt" data-id="1010000004182721" class="btn btn-lg btn-primary ml20">提交留言
                        </button>
       </form>
</c:if>

       
        </div> 
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
    
         
    </div>
<jsp:include page="footer.jsp"></jsp:include>
    
    
    <script>
    <% if(success!=null && success.equals("1")){%>
    alert("转发成功");
    <% } %>
    </script>
      
    <!--content end--><script src="<%=basePath %>static/kindeditor-4.1.10/kindeditor-min.js"></script>
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