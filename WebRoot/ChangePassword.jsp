<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
<script language="javascript" src="js/changepassword.js"></script>

    <title>验证用户</title>
  </head>

  <body>
    <form name="form1" id="form1" method="post" action="ChangePass" onsubmit="return CheckForm()">
  		<table>
  			<tr>
  				<td>用户名：</td>
  				<td><input type="text" name="userName" id="userName" placeholder="请输入用户名" autocomplete="off"/></td>
  			</tr>
  			<tr>
  				<td>手机号：</td>
  				<td><input type="text" name="mobilePhone" id="mobilePhone" placeholder="请输入绑定手机号" autocomplete="off"/></td>
  			</tr>
  			<tr>
        		<td>密保问题</td>
        		<td>
          			<select name="question" id="question">
          			<option value="我最喜欢的食物是什么">我最喜欢的食物是什么？</option>
           			<option value="对我影响最大的人是谁">对我影响最大的人是谁？</option>
            		<option value="我的爱好是什么">我的爱好是什么？</option>
          			</select>
        		</td>
      		</tr>
  			<tr>
  				<td>密保答案：</td>
  				<td><input type="text" name="answer" id="answer" placeholder="请输入密保问题答案" autocomplete="off"/></td>
  			</tr>
  			<tr>
  				<td><input type="submit" value="确定" /></td>
  				<td><a href="index.jsp">取消</a></td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
