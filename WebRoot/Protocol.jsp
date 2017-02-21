<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- TemplateBeginEditable name="doctitle" -->
<title>新用户注册 用户注册协议</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
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

1) 填充只会放置于 div 的顶部和/或底部。此 div 中的元素侧边会有填充。这样，您可以避免使用任何"方框模型数学"。请注意，如果向 div 自身添加任何侧边填充或边框，这些侧边填充或边框将与您定义的宽度相加，得出 *总计* 宽度。您也可以选择删除 div 中的元素的填充，并在该元素中另外放置一个没有任何宽度但具有设计所需填充的 div。

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

</style></head>
<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Login.jsp"style='text-decoration:none;'><font color="black"><b>登录</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp" style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
  </table>
<body>

<div class="container">
  <div class="header"><center><b>用户注册协议</b></center></div>
    <div class="content">
欢迎阅读本网站服务条款，其阐述之内容和条件适用于您使用本网站提供的各项服务。
<br><b>1、服务条款的确认</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;您点击服务条款页面下的"我同意"按钮，即视为您已阅读、了解并完全同意服务条款中的各项内容，包括本网站对服务条款所作的任何修改，自愿遵守相关公告的规定。除另行明确声明外，本网站任何服务范围或功能的变化均受服务条款约束。
<br><b>2、服务条款的修改</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;本网站在必要时可修改服务条款，并在网站进行公告，一经公告，立即生效。如您继续使用服务，则视为您已接受修订的服务条款。
<br><b>3、用户注册</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;本网站有权对您提供的资料进行核验，核验结果仅适用于您在本网站办理注册的相关业务；如您提供的资料不准确，或无法通过网站核验，或本网站有合理的理由认为该资料不真实、不完整、不准确，本网站有权暂停或终止您的注册身份及资料，并拒绝您使用本网站的服务。
<br><b>4、用户资料及保密</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;注册时，请您选择填写用户名和密码，并按页面提示提交相关信息。您负有对用户名和密码保密的义务，并对该用户名和密码下发生的所有活动承担责任。本网站不会向您所使用服务所涉及相关方之外的其他方公开或透露您的个人资料，法律法规规定除外。
<br><b>5、责任的免除和限制</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;(1)遇以下情况，本网站不承担任何责任，包括但不仅限于： ①因不可抗力、系统故障、通讯故障、网络拥堵、供电系统故障、恶意攻击等造成本网站未能及时、准确、完整地提供服务。 ②无论在任何原因下，您通过使用本网站上的信息或由本网站链接的其他网站上的信息，或其他与本网站链接的网站上的信息所导致的任何损失或损害。 
<br>&nbsp;&nbsp;&nbsp;&nbsp;(2)本网站负责对本网站上的信息进行核验与更新，但并不就信息的时效性、准确性以及服务功能的完整性和可靠性承担任何义务和赔偿责任。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(3)如用户利用系统差错、故障或其他原因导致的漏洞，损害本网站及任何第三方的权益，本网站将终止该用户资格，并保留法律追究的权利。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(4)如果本网站发现有影响用户信息安全的行为，本网站有权对用户信息实施保护。必要时用户需经重新验证身份后方可继续使用。
<br><b>6、拒绝提供担保</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;本网站对以下情形不做任何担保，包括但不仅限于：
<br>&nbsp;&nbsp;&nbsp;&nbsp;(1)服务一定能满足您的要求。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(2)服务不会受中断。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(3)服务的安全性、及时性、完整性和准确性。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(4)服务所涉及相关方的服务。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(5)您从本网站收到口头或书面的意见或信息。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(6)您所提供的身份信息一定被注册。
<br>&nbsp;&nbsp;&nbsp;&nbsp;(7)他人使用与您相同的身份信息注册。
<br><b>7、网站链接</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;本网站包含有链接的第三方网站。这些链接纯粹为用户提供方便。本网站无法就所链接的第三方网站的内容或可用性予以控制或对其负责。如果您决定访问任何与本网站相链接的第三方网站，则应完全自行承担相应风险和责任。
<br><b>8、保障</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;您同意保障和维护本网站的利益，并承担您或其他人使用您的用户资料造成本网站或任何第三方的损失或损害的赔偿责任。
<br><b>9、知识产权</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;本网站所有内容和资源的版权归本网站所有(除非本网站已经标明版权所有)。未经本网站事先的书面许可，任何单位和个人不得就本网站上的相关资源以任何方式、任何文字做全部或局部复制、修改、发送、储存、发布、交流或分发，或利用本网站上的相关资源创建其他商业用途的资源。否则本网站将追究其法律责任。
<br><b>10、法律适用和管辖</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;本服务条款之效力、解释、变更、执行与争议解决均看本人心情。本网站享有对服务条款的最终解释与修改权。
<br>
<br><center>
<input type="button"  name="next" value="下一步" style="width:80px;height:40px" onclick="window.location.href='Register.jsp'"/>
<input type="button"  name="cancel" value="取消" style="width:80px;height:40px" onclick="window.location.href='index.jsp'"/>
 </div></div>
  <div class="footer"><center><br>
    <p>软四出品   必属精品</p>
    <p>犯贱是普遍真理，你我只是其中之一</p></center>
    <!-- end .footer --></div>
  
  
</body>
</html>
