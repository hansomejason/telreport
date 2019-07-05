<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html>
	<head>
		<title>修改员工</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<script type="text/javascript" src="../inc/Calendar1.inc"></script>

		<script type="text/javascript">
	//显示对应职务的最低和最高工资
	function showSal() {
		//获得职务表单元素对象
		var job_id = document.form1.job_id;
		//显示最低工资和最高工资
		if (job_id.value != "") {
			document.form1.min_salary.value = eval("document.form1.min"
					+ job_id.value + ".value");
			document.form1.max_salary.value = eval("document.form1.max"
					+ job_id.value + ".value");
		} else {
			document.form1.min_salary.value = "";
			document.form1.max_salary.value = "";
		}
	}
</script>
	</head>

	<body onload="showSal()">
		<!-- 页面头部 -->
		<jsp:include page="top.jsp"></jsp:include>
		<!-- 页面内容 -->
		<table border="0" width="950" height="350" bgcolor="#ffffff"
			align="center">
			<tr>
				<td align="center" valign="top">
					<form name="form1" method="post" action="UpdateEmpServlet">
						<table width="500" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#CCCCCC">
							<tr>
								<td height="24" colspan="2" align="center" bgcolor="#FFCC00">
									请修改员工信息
								</td>
							</tr>
							<tr>
								<td width="120" height="24" bgcolor="#FFFFFF">
									员工姓名
								</td>
								<td width="357" height="24" bgcolor="#FFFFFF">
									<input name="empname" type="text" id="empname" value="张三">
									*
								</td>
							</tr>
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									邮箱地址
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<input name="email" type="text" id="email" value="zhang@163.com">
									*
								</td>
							</tr>
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									电话号码
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<input name="phone_number" type="text" id="phone_number" value="111.222.333">
									例如123.456.789
								</td>
							</tr>
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									入职日期
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<input name="hire_date" type="text" id="hire_date" value="2010-02-01"
										onfocus="calendar()">
									yyyy-mm-dd
								</td>
							</tr>
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									职务
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<select name="job_id" id="job_id" onChange="showSal()">
										<option value="">
											请选择职务
										</option>

										<!-- 循环输出所有的职务option -->
										
											
												<option value="WY" selected>
													文员
												</option>
											
											
										
											
											
												<option value="FWY">
													服务员
												</option>
											
										
											
											
												<option value="CHSH">
													厨师
												</option>
											
										
											
											
												<option value="BAN">
													保安
												</option>
											
										
											
											
												<option value="JL">
													部门经理
												</option>
											
										

									</select>

									<!-- 隐藏表单元素：存储每种职务的最低和最高工资 -->
									
										<input type="hidden" name="minWY"
											value="1500" />
										<input type="hidden" name="maxWY"
											value="3000" />
									
										<input type="hidden" name="minFWY"
											value="800" />
										<input type="hidden" name="maxFWY"
											value="2000" />
									
										<input type="hidden" name="minCHSH"
											value="1500" />
										<input type="hidden" name="maxCHSH"
											value="9999" />
									
										<input type="hidden" name="minBAN"
											value="800" />
										<input type="hidden" name="maxBAN"
											value="2400" />
									
										<input type="hidden" name="minJL"
											value="3000" />
										<input type="hidden" name="maxJL"
											value="9999" />
									

									工资范围
									<input name="min_salary" type="text" id="min_salary" size="10"
										readonly>
									~
									<input name="max_salary" type="text" id="max_salary" size="10"
										readonly>
								</td>
							</tr>
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									工资
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<input name="salary" type="text" id="salary" value="2000.0">
									*
								</td>
							</tr>
							<tr>
								<td height="24" bgcolor="#FFFFFF">
									部门
								</td>
								<td height="24" bgcolor="#FFFFFF">
									<select name="department_id" id="department_id">
										<option value="">
											请选择部门
										</option>

										<!-- 循环输出所有的部门的option -->
										
											
												<option value="10" selected>
													办公室
												</option>
											
											
										
											
											
												<option value="20">
													客房部
												</option>
											
										
											
											
												<option value="30">
													餐饮部
												</option>
											
										
											
											
												<option value="40">
													保安部
												</option>
											
										
									</select>
								</td>
							</tr>
							<tr>
								<td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
									<input type="button" name="Submit" value="更新" onClick="alert('更新员工成功');location.href='EmpView.jsp'">
									<input type="button" name="Submit2" value="取消"
										onclick="history.back()">
									<input name="employee_id" type="hidden" id="employee_id"
										value="100">
								</td>
							</tr>
						</table>
					</form>
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