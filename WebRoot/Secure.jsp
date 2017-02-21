<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" src="js/secure.js"></script>
<!-- TemplateBeginEditable name="doctitle" -->
<title>账户安全</title>

<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	/*background: #42413C;*/
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ 元素/标签选择器 ~~ */
ul, ol, dl { /* 由于浏览器之间的差异，最佳做法是在列表中将填充和边距都设置为零。为了保持一致，您可以在此处指定需要的数值，也可以在列表所包含的列表项（LI、DT 和 DD）中指定需要的数值。请注意，除非编写一个更为具体的选择器，否则您在此处进行的设置将会层叠到 .nav 列表。 */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* 删除上边距可以解决边距会超出其包含的 div 的问题。剩余的下边距可以使 div 与后面的任何元素保持一定距离。 */
	padding-right: 15px;
	padding-left: 15px; /* 向 div 内的元素侧边（而不是 div 自身）添加填充可避免使用任何方框模型数学。此外，也可将具有侧边填充的嵌套 div 用作替代方法。 */
}
a img { /* 此选择器将删除某些浏览器中显示在图像周围的默认蓝色边框（当该图像包含在链接中时） */
	border: none;
}
/* ~~ 站点链接的样式必须保持此顺序，包括用于创建悬停效果的选择器组在内。 ~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* 除非将链接设置成极为独特的外观样式，否则最好提供下划线，以便可从视觉上快速识别 */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* 此组选择器将为键盘导航者提供与鼠标使用者相同的悬停体验。 */
	text-decoration: none;
}

/* ~~ 此固定宽度容器包含其它 div ~~ */
.container {
	width: 960px;
	/*background: #FFF;*/
	margin: 0 auto; /* 侧边的自动值与宽度结合使用，可以将布局居中对齐 */
}

/* ~~ 标题未指定宽度。它将扩展到布局的完整宽度。标题包含一个图像占位符，该占位符应替换为您自己的链接徽标 ~~ */
.header {
	/*background: #ADB96E;*/
}

/* ~~ 这是布局信息。 ~~ 

1) 填充只会放置于 div 的顶部和/或底部。此 div 中的元素侧边会有填充。这样，您可以避免使用任何“方框模型数学”。请注意，如果向 div 自身添加任何侧边填充或边框，这些侧边填充或边框将与您定义的宽度相加，得出 *总计* 宽度。您也可以选择删除 div 中的元素的填充，并在该元素中另外放置一个没有任何宽度但具有设计所需填充的 div。

*/

.content {

	padding: 10px 0;
}

/* ~~ 脚注 ~~ */
.footer {
	width: 100%;
	padding: 10px 0;
	background: #CCC49F;
}

/* ~~ 其它浮动/清除类 ~~ */
.fltrt {  /* 此类可用于在页面中使元素向右浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: right;
	margin-left: 8px;
}
.fltlft { /* 此类可用于在页面中使元素向左浮动。浮动元素必须位于其在页面上的相邻元素之前。 */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* 如果从 #container 中删除或移出了 #footer，则可以将此类放置在 <br /> 或空 div 中，作为 #container 内最后一个浮动 div 之后的最终元素 */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->

.table-a table{border:1px solid #00CCFF} 
/* css注释：只对table标签设置红色边框样式 */ 
</style>
</head>
<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></a></h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Exit.jsp" style='text-decoration:none;'><font color="black"><b>退出</b></font></a>&nbsp;&nbsp;<a href="HomePage.jsp" style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
</table>
<body>

<div class="container">
  <div class="header">
   您现在的位置：系统首页-><a href="Center.jsp"><font color="black">个人中心</font></a>-><b>账户安全</b>
  </div>
  <div class="content">
    <div  class="table-a">
    <table width="208"  align="left" >
  <tr>
    <td bgcolor="#00CCFF" ><a href="Center.jsp" style='text-decoration:none;'><span style="color: white">个人中心</span></a></td>
  </tr></table>
  <table width="725">
  <tr>
    <td bgcolor="#00CCFF" ><span style="color: white">账户安全</span></td>
  </tr></table>
  <table width="208" align="left" >
   <tr><td height="20" >&nbsp; </td></tr>
   <tr>
    <td height="37"><b><a href="Center.jsp" style='text-decoration:none;'><font color="black">个人信息</font></a></b></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="Individ.jsp" ><font color="black">查看个人信息</font></a></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="Secure.jsp"><font color="black">账户安全</font></a></td>
  </tr>
  <tr>
    <td height="37"><b>我的贷款</b></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="toApply" ><font color="black">我要贷款</font></a></td>
  </tr>
   <tr>
    <td>&nbsp;&nbsp;<a href="loanRecord"><font color="black">贷款记录</font></a></td>
  </tr>
</table>
	<form id="form1" name="form1" method="post" action="changeInfo" onsubmit="return CheckForm()">
    <table width="725">
    <c:choose>
 	<c:when test="${!(empty userinfo) }">
   	<c:forEach items="${userinfo}" var="user">
   <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改密码</td>
  		<td width="485"><input type="button" name="changePass" id="changePass" onclick="window.location.href='VerifyUser.jsp'" style="width:80px;height:30px" value="修改密码"/></td>
    </tr>
    <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;安全邮箱</td>
  		<td width="485"><input type="text" name="email" id="email" value="${user.email}" placeholder="邮箱不能为空"/></td>
    </tr>
    <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机绑定</td>
  		<td width="368"><input type="text" name="mobilePhone" id="mobilePhone" value="${user.mobilePhone}" placeholder="手机号不能为空"/></td>
    </tr>
    <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;固话绑定</td>
  		<td width="368"><input type="text" name="telePhone" id="telePhone" value="${user.telePhone} "/></td>
    </tr>
    <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通信地址</td>
  		<td width="368"><input type="text" name="address" id="address" value="${user.address}" placeholder="现居地不能为空"/></td>
    </tr>
    <tr align="left">
    	<td></td>
    	<td><input type="submit"  name="change" id="change" value="保存" style="width:80px;height:30px" />
    		<input type="reset"  name="cancel" id="cancel" value="取消" style="width:80px;height:30px" />
    	</td>
    </tr>
    </c:forEach>
      </c:when>
      </c:choose> 
    </table>
    </form>
    <p/><p/> 
    <p/>
    <br></div></div>
    <!-- end .content --></div>
    </center></div>
  <div class="footer"><center><br>
    <p>软四出品   必属精品</p>
    <p>犯贱是普遍真理，你我只是其中之一</p></center>
    <!-- end .footer --></div>
  
  
</body>
</html>
