<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>用户登陆</title>
  <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="logo">
  <img alt="电信图标" src="https://login.189.cn/web/static/img/logonew.png" height="60">
</div>
<form name="form1" method="post" action="LoginServlet">
  <div class="divcss5">
    <div class="box">
      <div class="img">
        <img src="https://www.189.cn/upfiles/jt_zthd/images/2019/0/ac0d1161-4da6-4d9a-b396-ca4a724d3e89.jpg" alt=""  align="bottom">
      </div>
    </div>
    <table width="300" border="0" align="center" cellpadding="4"
           cellspacing="1" bgcolor="#FF9900" >

      <tr>
        <td height="24" colspan="2" align="center" bgcolor="#FFCC66">
          电信用户登陆
        </td>
      </tr>
      <tr>
        <td width="77" height="24" align="center" bgcolor="#FFFFFF">
          账号
        </td>
        <td width="204" height="24" bgcolor="#FFFFFF">
          <input name="adminname" type="text" id="adminname" class="input1">
        </td>
      </tr>
      <tr>
        <td height="24" align="center" bgcolor="#FFFFFF">
          密码
        </td>
        <td height="24" bgcolor="#FFFFFF">
          <input name="adminpwd" type="password" id="adminpwd"
                 class="input1">
        </td>
      </tr>
      <tr>
        <td height="24" align="center" bgcolor="#FFFFFF">
          登录身份
        </td>
        <td height="24" bgcolor="#FFFFFF">
          <input name="adminlevel" type="radio" value="1" checked>
          员工
          <input name="adminlevel" type="radio" value="0">
          用户
        </td>
      </tr>
      <tr>
        <td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
          <input type="submit" name="Submit" value="进入系统" >
          &nbsp;&nbsp;
          <input type="hidden" name="targetURL" value="">
        </td>
      </tr>

    </table>
  </div>
</form>

<div class="footer">
  <p>
    版权所有 ©2019 中国电信集团公司 [ 增值电信业务经营许可证 A2.B1.B2-20090001 ] ICP 证号:京 ICP 备 09031924号
  </p>
</div>


</body>
</html>