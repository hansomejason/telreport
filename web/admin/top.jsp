<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
//ok
		<title>My JSP 'top.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="80" bgcolor="#FFFFFF">
					<img src="../img/bannal.jpg" width="950" height="80">
				</td>
			</tr>
			<tr>
				<td height="24" align="right" bgcolor="#FFFFFF">
					<a href="default.jsp">首页</a>
					<a href="QueryDeptServlet">部门查询</a>
					<a href="JobsView.jsp">职务查询</a>
					<a href="QueryFYEmpServlet?pageNum=1">员工查询</a>
					<a href="logout.jsp">退出登陆</a>
				</td>
			</tr>
			<tr>
				<td height="24" align="right" bgcolor="#0099CC">
					当前用户：${admin.username } 身份：
					<c:choose>
						<c:when test="${admin.level == 1 }">
							管理员
						</c:when>
						<c:otherwise>
							操作员
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</table>
	</body>
</html>
