<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<script language="javascript" src="js/confirmchangepassword.js"></script>

    <title>重设密码</title>
    
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
    <form name="form1" id="form1" method="post" action="ConfirmChangePass" onsubmit="return CheckForm()">
  		<table>
  			<tr>
  				<td>新&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
  				<td><input type="password" name="newPassword" id="newPassword" placeholder="请输入新密码" autocomplete="off"/></td>
  			</tr>
  			<tr>
  				<td>确认新密码：</td>
  				<td><input type="password" name="confirmPassword" id="confirmPassword" placeholder="需与新密码相同" autocomplete="off"/></td>
  			</tr>
  			<tr>
  				<td><input type="submit" value="确定修改" /></td>
  				<td><a href="index.jsp">取消</a></td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
