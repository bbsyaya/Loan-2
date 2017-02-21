<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>贷款效果分析</title>

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
.cla{
	height:180px;
	width:770px;
	background:lightgray;
}
-->

.table-a table{border:1px solid #00CCFF} 
</style>
  
</head>

<body>

<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Exit.jsp" style='text-decoration:none;'><font color="black"><b>退出</b></font></a>&nbsp;&nbsp;<a href="AdminHomePage.jsp" style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
  </table>
<div class="container">
  <div class="header">
   您现在的位置：系统首页-><a href="AdminCenter.jsp"><font color="black">管理中心</font></a>-><b>贷款效果分析</b>
  </div>
  <div class="content">
    <div  class="table-a">
    <table width="180"  align="left" >
  <tr>
    <td bgcolor="#00CCFF" ><a href="Center.jsp"style='text-decoration:none;'><span style="color: white">管理中心</span></a></td>
  </tr></table>
  <table width="770">
  <tr>
    <td bgcolor="#00CCFF" ><span style="color: white">贷款效果分析</span></td>
  </tr></table>
  <table width="180" align="left" >
   <tr><td height="30" >&nbsp; </td></tr>
   <tr>
    <td>&nbsp;&nbsp;<a href="totalCheckLoan" ><font color="black">累计审贷</font></a></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="totalLending" ><font color="black">累计放贷</font></a></td>
  </tr>
   <tr>
    <td>&nbsp;&nbsp;<a href="toCheckLoan" ><font color="black">未审核</font></a></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="adminAnalyses" ><font color="black">季度总结</font></a></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="AdminEdit.jsp" ><font color="black">修改服务细则</font></a></td>
  </tr>
  <tr><td height="30" >&nbsp; </td></tr>
  </table>
 
    <table width="770px" border="0" cellpadding="0" cellspacing="0" bgcolor="lightgray">
     <c:forEach items="${analyse}" var="data">
     <tr style="height:30px">
     	<td>标题:<font color="blue"> ${data.analyseTitle}</font></td>
     </tr>
     <tr style="height:30px">
     	<td>日期:<font color="blue"> ${data.date}</font></td>
     </tr>
     	<tr style="height:30px">
     	<td>撰写人:<font color="blue"> ${data.user}</font></td>
     </tr>
     </c:forEach>
   	</table>
   	<table width="770px" border="0" cellpadding="0" cellspacing="0" bgcolor="lightgray">
   	<c:forEach items="${analyse}" var="data">	
     <tr style="height:200px">
     	<td>${data.analyse}</td>
     </tr>
     </c:forEach>
     <tr>
     	<td><div align="right">
     		<input type="button" value="返回" style="width:100px;height:30px;" onclick="window.location.href='adminAnalyses'"/>
     	</div></td>
     </tr>
   	</table>
   	
    <p/><p/> 
    <p/>
    <br></div></div>
    <!-- end .content --></div>
</body>
</html>
