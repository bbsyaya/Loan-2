<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>新用户注册 填写账户信息</title>
<script language="javascript" src="js/register.js"></script>

<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	/*background: #42413C;*/
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
	margin: 0 auto; 
}


.header {
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

</style></head>

<body>
<form id="form1" name="form1" method="post" action="Register2.jsp" onsubmit="return CheckForm()">

<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Login.jsp" style='text-decoration:none;'><font color="black"><b>登录</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp"style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
</table>

<div class="container">
  <div class="header">
   &nbsp;&nbsp;&nbsp;&nbsp; 您现在的位置：系统首页->注册-><b>填写账户信息</b>
  </div>
  <center>
  <div class="content">
    <h1><img src="image/first.jpg" width="920" height="49" /></h1>
    <div  class="table-a">
    <table width="920" >
  <tr>
    <td bgcolor="#00CCFF"><span style="color: white">账户信息</span></td>
  </tr>
  </table>
  
    <table width="920">
      <tr>
        <td width="350" height="69" align="right">用户名</td>
        <td width="168">
          <label for="name"></label>
          <input type="text" name="userName" id="userName" height="50px" placeholder="请设置您的用户名" autocomplete="off"/>
        </td>
        <td width="374"></td>
      </tr>
      <tr>
        <td width="350" height="60" align="right">密码</td>
        <td>
        <label for="password"></label>
          <input type="password" name="password" id="password" height="50px" placeholder="保持在6-12个字符内" autocomplete="off"/>
        </td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="59" align="right">确认密码</td>
        <td>
          <label for="confirmPassword"></label>
          <input type="password" name="confirmPassword" id="confirmPassword"  height="50px" placeholder="需与新密码相同" autocomplete="off"/>
      	</td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">密保问题</td>
        <td>
          <label for="question"></label>
          <select name="question" id="question"  style="width:157px">
          	<option value="我最喜欢的食物是什么">我最喜欢的食物是什么？</option>
            <option value="对我影响最大的人是谁">对我影响最大的人是谁？</option>
            <option value="我的爱好是什么">我的爱好是什么？</option>
          </select>
        </td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">密保问题答案</td>
        <td>
          <label for="answer"></label>
          <input type="text" name="answer" id="answer"  height="50px" placeholder="请设置您的答案" autocomplete="off"/>
        </td>
        <td></td>
      </tr>
    </table>
    <p/><p/> 
    <div>
    <table><tr>
     <td align="right"> <input type="radio" name="radio" id="radio"  /></td> <td>  <b>我已阅读并同意遵守《用户注册协议》</b>
      <label for="agree"></label>
    </td></tr>
    </table>
    <p/>
    <br>
    <input type="submit"  name="next" value="下一步" style="width:80px;height:40px"/>
    <input type="button"  name="cancel" value="取消" style="width:80px;height:40px" onclick="window.location.href='index.jsp'"/>


</div></div>
    <!-- end .content --></div>
    </center></div>
  <div class="footer"><center><br>
    <p>软四出品   必属精品</p>
    <p>犯贱是普遍真理，你我只是其中之一</p></center>
    <!-- end .footer --></div>
  
</form>
</body>
</html>
