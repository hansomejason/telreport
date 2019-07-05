<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
		<title>员工数据</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<script type="text/javascript">
			//****************-删除确认***************
			function del(employee_id) {
				//弹出确认框
				var flag = window.confirm("你确定要删除" + employee_id + "号员工吗?");
				//如果单击确定，则执行DelEmpServlet，并且传入员工编号
				if (flag) {
					alert("删除成功");
					location.href = "EmpView.jsp";
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
					<table width="98%" border="0" cellpadding="5" cellspacing="1"
						bgcolor="#CCCCCC">
						<tr>
							<td width="7%" height="24" bgcolor="#FFCC00">
								员工编号
							</td>
							<td width="11%" height="24" bgcolor="#FFCC00">
								员工姓名
							</td>
							<td width="16%" height="24" bgcolor="#FFCC00">
								邮箱
							</td>
							<td width="16%" height="24" bgcolor="#FFCC00">
								电话
							</td>
							<td width="12%" height="24" bgcolor="#FFCC00">
								入职时间
							</td>
							<td width="9%" height="24" bgcolor="#FFCC00">
								职务
							</td>
							<td width="9%" height="24" bgcolor="#FFCC00">
								工资
							</td>
							<td width="7%" height="24" bgcolor="#FFCC00">
								部门
							</td>
							<td width="13%" height="24" bgcolor="#FFCC00">
								操作
							</td>
						</tr>
						<c:forEach items="${elist }" var="emp">
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									${emp.eid }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.ename }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.email }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.etel }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.ehiredate }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.jname }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.esal }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									${emp.dname }
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<a href="UpdateEmp.jsp">修改</a>
									<a href="javascript:del(100)">删除</a>
																</td>
							</tr>
						</c:forEach>
						
					</table>

					<!-- 分页显示用界面 -->
					<table width="95%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="24" align="center">
								共${totalcount }条数据，每页显示${count }条，
								共${totalNum }页，当前是第${pageNum }页
							</td>
						</tr>
						<tr>
							<td height="24" align="center">
							<c:choose>
								<c:when test="${pageNum == 1 }">
									首页
									上页
									<a href="QueryFYEmpServlet?pageNum=${pageNum+1 }">下页</a>
									<a href="QueryFYEmpServlet?pageNum=${totalNum }">末页</a>
								</c:when>
								<c:when test="${pageNum == totalNum }">
									<a href="QueryFYEmpServlet?pageNum=1">首页</a>
									<a href="QueryFYEmpServlet?pageNum=${pageNum-1 }">上页</a>
									下页
									末页
								</c:when>
								<c:when test="${totalNum == 1 }">
									首页
									上页
									下页
									末页
								</c:when>
								<c:otherwise>
									<a href="QueryFYEmpServlet?pageNum=1">首页</a>
									<a href="QueryFYEmpServlet?pageNum=${pageNum-1 }">上页</a>
									<a href="QueryFYEmpServlet?pageNum=${pageNum+1 }">下页</a>
									<a href="QueryFYEmpServlet?pageNum=${totalNum }">末页</a>
								</c:otherwise>
							</c:choose>
								
							</td>
						</tr>
						<tr>
							<td height="24" align="center">
								
									
									
										<font color="red"><b>${pageNum }</b>
										</font>
									
								
							</td>
						</tr>
					</table>
					<p>
						<a href="AddEmpServlet1">增加新员工</a>					</p>
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