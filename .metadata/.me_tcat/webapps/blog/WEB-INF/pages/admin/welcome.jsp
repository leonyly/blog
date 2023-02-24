<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.app.utils.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body data-type="index">


<div id="mainRep" style="width: 100%;height: 500px;"></div>
            
            
            
        
 </div>
        
  <!-- end Layout -->


  
  <script type="text/javascript" src="http://echarts.baidu.com/build/dist/echarts.js"></script>

				<script type="text/javascript">

					// 路径配置
					// 路径配置
					require.config({
						paths: {
							echarts: 'http://echarts.baidu.com/build/dist'
						}
					});


					// 使用
					require(
						[
							'echarts',
							'echarts/chart/line',
							'echarts/chart/bar',
						],
						function (ec) {
							// 基于准备好的dom，初始化echarts图表
							var myChart = ec.init(document.getElementById('mainRep'));

							var
								option = {
									title : {
										text: 'System report',
										subtext: '--'
									},
									tooltip : {
										trigger: 'axis'
									},
									legend: {
										data:[<c:forEach items="${requestScope.lists }" var="u" varStatus="st">
										'${u.username}',
										 </c:forEach>
										]
									},
									toolbox: {
										show : true,
										feature : {
											mark : {show: true},
											dataView : {show: true, readOnly: false},
											magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
											restore : {show: true},
											saveAsImage : {show: true}
										}
									},
									calculable : true,
									xAxis : [
										{
											type : 'category',
											boundaryGap : false,
											data : [
                                                '用户','类目','信息','相册','照片','标签','行程规划'
											]
										}
									],
									yAxis : [
										{
											type : 'value'
										}
									],
									series : [
										{
											name:'--',
											type:'line',
											smooth:true,
											itemStyle: {normal: {areaStyle: {type: 'default'}}},
											data:[${n1},${n2},${n3},${n4},${n5},${n6}]
										}											
									]
								};

							// 为echarts对象加载数据
							myChart.setOption(option);
						}
					);
				</script>
  
  <script>
  
  </script>
</body>
</html>
