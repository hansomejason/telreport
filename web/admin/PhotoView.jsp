<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>员工图片</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>

	<body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center">
					<a href="AddPhoto.jsp">添加100号员工照片</a>
					<a href="javascript:window.close()">关闭窗口</a>				</td>
			</tr>
		</table>

		
			<img src="../upload/1267115960093727.jpg" />
			<br />
			<p>
				<a
					href="#">删除此图片</a>			</p>
		
			<img src="../upload/126711587887562.jpg" />
			<br />
			<p>
				<a
					href="#">删除此图片</a>			</p>
		

	</body>
</html>