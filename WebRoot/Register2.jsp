<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>新用户注册 填写详细信息</title>
<script language="javascript" src="js/register2.js"></script>
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	color: #000;
}

ul, ol, dl {
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;
	padding-right: 15px;
	padding-left: 15px;
}
a img {
	border: none;
}
a:link {
	color: #42413C;
	text-decoration: underline;
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus {
	text-decoration: none;
}

.container {
	width: 960px;
	/*background: #FFF;*/
	margin: 0 auto;
}

.header {
	/*background: #ADB96E;*/
}

.content {

	padding: 10px 0;
}

.footer {
	width: 100%;
	padding: 10px 0;
	background: #CCC49F;
}

.fltrt {
	float: right;
	margin-left: 8px;
}
.fltlft {
	float: left;
	margin-right: 8px;
}
.clearfloat {
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->

.table-a table{border:1px solid #00CCFF} 
</style>
</head>

<body>

<form id="form1" name="form1" method="post" action="ServletRegister" onsubmit="return CheckForm()">

<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""style='text-decoration:none;'><font color="black"><b>登录</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp"style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
  </table>
  
<div class="container">
  <div class="header">
   &nbsp;&nbsp;&nbsp;&nbsp; 您现在的位置：系统首页->注册-><b>填写详细信息</b>
  </div>
  <center>
  <div class="content">
    <h1><img src="image/second.jpg" width="920" height="49" /></h1>
    <div  class="table-a">
    <table width="920" >
  <tr>
    <td bgcolor="#00CCFF"><span style="color: white">账户信息</span></td>
  </tr></table>
  <%
  
	String username=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"GB2312");
	String pass=new String(request.getParameter("password").getBytes("ISO-8859-1"),"GB2312");
	String ques=new String(request.getParameter("question").getBytes("ISO-8859-1"),"GB2312");
	String ans=new String(request.getParameter("answer").getBytes("ISO-8859-1"),"GB2312");
	
	session.setAttribute("userName",username);
	session.setAttribute("password",pass);
	session.setAttribute("question",ques);
	session.setAttribute("answer",ans);
   %>

    <table width="920">
      <tr>
      	<td><input type="hidden" name="userName" value="<%=username%>" /></td>
      	<td><input type="hidden" name="password" value="<%=pass%>" /></td>
      	<td><input type="hidden" name="question" value="<%=ques%>" /></td>
      	<td><input type="hidden" name="answer" value="<%=ans%>" /></td>
      </tr>
      <tr>	
        <td width="350" height="69" align="right">姓名</td>
        <td width="168">
          <label for="realName"></label>
          <input type="text" name="realName" id="realName" height="50px" placeholder="请填写您的真实姓名" autocomplete="off"/>
       </td>
        <td width="374"></td>
      </tr>
      <tr>
        <td width="350" height="60" align="right">性别</td>
        <td>
          <label for="sex"></label>
         <input type="radio" name="sex" id="sex1" value="男" />男
         <input type="radio" name="sex" id="sex2" value="女" />女
       </td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="59" align="right">证件类型</td>
        <td>
          <label for="paper"></label>
          <select name="paper" id="paper"  style="width:157px">
          	<option value="idcard">二代身份证</option>
            <option value="passport"> 护照</option>
            </select>
        </td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">证件号码</td>
        <td>
          <label for="paperID"></label>
          <input type="text" name="paperID" id="paperID"  height="50px" placeholder="请输入您的证件号" autocomplete="off"/>
       </td>
        <td>&nbsp;</td>
      </tr>
       <tr>
        <td width="350" height="57" align="right">邮箱</td>
        <td>
          <label for="email"></label>
          <input type="text" name="email" id="email"  height="50px" placeholder="请输入您的邮箱" autocomplete="off"/>
       </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">手机</td>
        <td>
          <label for="tel"></label>
          <input type="text" name="mobilePhone" id="mobilePhone"  height="50px" placeholder="请输入您的手机号" autocomplete="off"/>
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">固定电话</td>
        <td>
          <label for="phone"></label>
          <input type="text" name="telePhone" id="telePhone"  height="50px"/>
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">地址</td>
        <td>
          <label for="address"></label>
          <input type="text" name="address" id="address"  placeholder="请填写您的现居地址" autocomplete="off"/>
       </td>
        <td>&nbsp;</td>
      </tr>
    </table>
    <p/><p/> 
    <p/>
    <br/>
    <table border="0">
    	<tr>
   		<td><input type="button"  name="back" value="返回上一步" onclick="window.location.href='Register.jsp'" style="width:80px;height:40px"/>
    </td><td><input type=submit  name="tijiao" value="注册" style="width:80px; height:40px"/>
	</td></tr>
</table></div></div>
    <!-- end .content --></div>
    </center></div>
  <div class="footer"><center><br>
    <p>软四出品   必属精品</p>
    <p>犯贱是普遍真理，你我只是其中之一</p></center>
    <!-- end .footer --></div>
  
 </form>
</body>
</html>
