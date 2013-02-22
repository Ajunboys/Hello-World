<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery/json2.js"></script>
	<script type="text/javascript">

		/****************************************************
		第一种，返回JSON的数据格式然后本地进行解析
		 用JQUERY这个JS组件跨域访问另一个系统
		*********************************************/		
		function returnJSON() {
			var inData = {
				'jsondata' :"This is parmeter"
			};
			//用JQUERY取跨域的数据 ,这里的路径可以换成是你要访问其它的路径，
			//比如你要访问CSR中的某个action中的方法:
			//http://128.160.96.15:9125/crm_essp/ocrmweb/com.ccb.cddev.csr.service.trasaction/sendTransactionForCCOB.action
			//将路径改掉
			jQuery.getJSON('http://127.0.0.1:8080/b/b1.jsp?jsoncallback=?',
					inData, callback);
	
		}
		
		//回调函数，取得从另一个系中返回的JSON数据。
		function callback(data) {
			//这里是一个字符串
			alert("在回调函数中显示---   >>>>>>>>" + data.re);
			//这里返回了一个二给数组，这里你就可以解析出来用来动态构造表格,并可以动态添加事件
			alert(data.listAll);
			
			/*
				这里可以用返回的数据动态构造页面
			*/
		}
		
		/**************************************
		第二种,直接返回一个JS的文件
		从另一个系统中取得JS文件中的JS用来本地用。
		类似于在在本地加上了
		《script type="text/javascript" src="xxx/xx.js"》《script》
		***************************/
		function returnJSFile() {
			jQuery.getScript("http://127.0.0.1:8080/b/js/returnString.js",
					function() {
						returnString();
					});
		}
		
		/*
		*第三种情况，可以返回一个JS的字符串
		*嵌在头部里面
		*/
		
		
		
	</script>
  </head>
  
  <body>
   <input type="text" value="11" id="aa">
   <input type="button" value="点击从JAVA代码中返回JSON数据" onclick="returnJSON()">
   <input type="button" value="点击返回JS文件" onclick="returnJSFile()">
    <input type="button" value="点击调用返回的JS函数" onclick="returnF()">
   
  
  </body>

</html>













