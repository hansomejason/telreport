<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
		<title>部门数据</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<script type="text/javascript">
			//****************-删除确认***************
			function del(department_id) {
				//弹出确认框
				var flag = window.confirm("你确定要删除" + department_id + "号部门信息吗?");
								
				//如果单击确定，则执行DelDeptServlet，并且传入部门编号
				if (flag) {
					alert("删除成功");
					location.href = "DelDeptServlet?did="+department_id;
				}
			}
		</script>

	</head>

	<body>
		<!-- 页面头部 -->
		<jsp:include page="top.jsp"></jsp:include>
		<!-- 页面内容 -->
<table border="0" width="950" height="350" bgcolor="#ffffff"
			align="center">
			<tr>
				<td align="center" valign="top">
					<table width="90%" border="0" cellpadding="5" cellspacing="1"
						bgcolor="#CCCCCC">
						<tr>
							<th width="17%" bgcolor="#FFCC00">
								部门编号
							</th>
							<th width="25%" bgcolor="#FFCC00">
								部门名称
							</th>
							<th width="37%" bgcolor="#FFCC00">
								部门地址
							</th>
							<th width="21%" bgcolor="#FFCC00">
								操作
							</th>
						</tr>

						<!-- 循环输出部门记录 -->
						<c:forEach items="${dlist }" var="dept">
							<tr>
								<td bgcolor="#FFFFFF">
									${dept.did }
								</td>
								<td bgcolor="#FFFFFF">
									${dept.dname }
								</td>
								<td bgcolor="#FFFFFF">
									${dept.dlocation }
								</td>
								<td bgcolor="#FFFFFF">
									<c:choose>
										<c:when test="${admin.level == 1 }">
											<a href="QueryByIdDeptServlet?did=${dept.did }">修改</a>
											<a href="javascript:del(${dept.did })">删除</a>
										</c:when>
										<c:otherwise>
											权限不足
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
				 	

					</table>
					<p>
					<c:if test="${admin.level == 1 }">
						<a href="AddDept.jsp">增加新部门</a>
					</c:if>
											</p>
				</td>
			</tr>
	</table>

		<!-- 页面底部 -->
		
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><hr></td>
  </tr>
  <tr>
    <td align="center">©版权所有</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
	</body>
</html>