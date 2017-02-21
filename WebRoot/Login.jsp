<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.awt.*, java.awt.image.*,java.util.*,javax.imageio.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录页面</title>
<script language="javascript">
function loadimage()
	{ 
		document.getElementById("image").src = "AuthImage?"+Math.random(); 
	}
	
	function CheckForm()
	{
		var name=document.getElementById("userName").value;
		var pass=document.getElementById("userPassword").value;
		var code=document.getElementById("code").value;
		if(name=="")
		{
			alert("Enter your userName ,please");
			document.form1.userName.focus();
			return false;
		}
		else if(pass=="")
		{
			alert("Enter your password ,please");
			document.form1.userPassword.focus();
			return false;
		}
		else if(code=="")
		{
			alert("Enter the verification code");
			document.form1.code.focus();
			return false;
		}
		else
		{
			return true;
		}
	} 
</script>

<style type="text/css">
<!--
body {
	background-image: url(image/bg.png);
}
-->
</style>
</head>

<body>
<form id = "form1" name="form1"  action = "CheckUser" method = "post" onsubmit="return CheckForm()">
<table width="310" border="0" style="margin:280px auto auto 310px">
  <tr>
    <td width="70"><div align="right">用户名</div></td>
    <td width="160" colspan="2"><input style="width:160px" type="text" name="userName" id="userName" placeholder="请输入用户名" autocomplete="off" /></td>
    <td width="80"><div align="left"><a href="Protocol.jsp">注册账号</a></div></td>
  </tr>
  <tr>
    <td><div align="right">密码</div></td>
    <td colspan="2"><input style="width:160px" type="password" name="userPassword" id="userPassword" placeholder="请输入密码" autocomplete="off" /></td>
    <td><div align="left"><a href="ChangePassword.jsp">找回密码</a></div></td>
  </tr>
  <tr>
    <td><div align="right">验证码</div></td>
    <td colspan="2"><input style="width:160px" type="text" name="code" id="code" placeholder="请输入验证码" autocomplete="off"/></td>
    <td><div align="left"><img src="AuthImage" id="image" border="0" onclick="loadimage()" /></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="33">&nbsp;</td>
    <td width="89" height="33">
      <div align="left">
        <input style="width:75px; height:30px; border:none; background-color:transparent; background-image:url(image/submit.png)"  
		type="submit" value=""  />
        </div></td>
    <td width="79">      <div align="right">
      <input style="width:75px; height:30px; border:none;background-color:transparent; background-image:url(image/back.png) "  
	  type="button" onclick="window.location.href='index.jsp'" />    
    </div></td>
    <td height="33">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
