<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>未审核</title>

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
<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Exit.jsp" style='text-decoration:none;'><font color="black"><b>退出</b></font></a>&nbsp;&nbsp;<a href="AdminHomePage.jsp" style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
  </table>
<div class="container">
  <div class="header">
   您现在的位置：系统首页-><a href="AdminCenter.jsp"><font color="black">管理中心</font></a>-><b>未审核</b>
  </div>
  <div class="content">
    <div  class="table-a">
    <table width="180"  align="left" >
  <tr>
    <td bgcolor="#00CCFF" ><a href="Center.jsp"style='text-decoration:none;'><span style="color: white">管理中心</span></a></td>
  </tr></table>
  <table width="770">
  <tr>
    <td bgcolor="#00CCFF" ><span style="color: white">未审核</span></td>
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
  <form id="form" name="form" action="" method="post" onsubmit="" >
    <table width="770px" border="1" cellpadding="0" cellspacing="0">
      <tr bgcolor="lightblue">
        <td style="display: none" align="center">序号</td>
        <td align="center">申贷日期</td>
        <td align="center">申贷人</td>
   		<td align="center">贷款金额</td>
   		<td align="center">贷款期限</td>
   		<td align="center">贷款用途</td>
   		<td align="center">担保人</td>
   		<td align="center">利率</td>
   		<td align="center">查看</td>
   		<td align="center">通过</td>
   		<td align="center">驳回</td>		    
      </tr>
      <c:forEach items="${list}" var="loan"> 
      <tr>
        <td style="display: none" align="center">${loan.id}</td>
        <td align="center">${loan.loanDate}</td>
        <td align="center">${loan.realName}</td>
   		<td align="center">${loan.account}</td>
   		<td align="center">${loan.loanLife}</td>
   		<td align="center">${loan.purpers}</td>
   		<td align="center">${loan.guarantor}</td>
   		<td align="center">${loan.rate}</td>
   		<td align="center"><a href="loanDetils?id=${loan.id}"><font color="blue">查看</font></a></td>
   		<td align="center"><a href="agree?id=${loan.id}"><font color="blue">通过</font></a></td>
   		<td align="center"><a href="disagree?id=${loan.id}"><font color="blue">驳回</font></a></td>		    
      </tr>
      </c:forEach>
    </table>
    </form>
    <p/><p/> 
    <p/>
    <br></div></div>
    <!-- end .content --></div>
</body>
</html>
