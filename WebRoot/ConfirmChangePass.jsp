<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" src="js/confirmchangepass.js"></script>
<!-- TemplateBeginEditable name="doctitle" -->
<title>�޸�����</title>

<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	/*background: #42413C;*/
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ Ԫ��/��ǩѡ���� ~~ */
ul, ol, dl { /* ���������֮��Ĳ��죬������������б��н����ͱ߾඼����Ϊ�㡣Ϊ�˱���һ�£��������ڴ˴�ָ����Ҫ����ֵ��Ҳ�������б����������б��LI��DT �� DD����ָ����Ҫ����ֵ����ע�⣬���Ǳ�дһ����Ϊ�����ѡ�������������ڴ˴����е����ý������� .nav �б� */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* ɾ���ϱ߾���Խ���߾�ᳬ��������� div �����⡣ʣ����±߾����ʹ div �������κ�Ԫ�ر���һ�����롣 */
	padding-right: 15px;
	padding-left: 15px; /* �� div �ڵ�Ԫ�ز�ߣ������� div ����������ɱ���ʹ���κη���ģ����ѧ�����⣬Ҳ�ɽ����в������Ƕ�� div ������������� */
}
a img { /* ��ѡ������ɾ��ĳЩ���������ʾ��ͼ����Χ��Ĭ����ɫ�߿򣨵���ͼ�������������ʱ�� */
	border: none;
}
/* ~~ վ�����ӵ���ʽ���뱣�ִ�˳�򣬰������ڴ�����ͣЧ����ѡ���������ڡ� ~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* ���ǽ��������óɼ�Ϊ���ص������ʽ����������ṩ�»��ߣ��Ա�ɴ��Ӿ��Ͽ���ʶ�� */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* ����ѡ������Ϊ���̵������ṩ�����ʹ������ͬ����ͣ���顣 */
	text-decoration: none;
}

/* ~~ �˹̶���������������� div ~~ */
.container {
	width: 960px;
	/*background: #FFF;*/
	margin: 0 auto; /* ��ߵ��Զ�ֵ���Ƚ��ʹ�ã����Խ����־��ж��� */
}

/* ~~ ����δָ����ȡ�������չ�����ֵ�������ȡ��������һ��ͼ��ռλ������ռλ��Ӧ�滻Ϊ���Լ������ӻձ� ~~ */
.header {
	/*background: #ADB96E;*/
}

/* ~~ ���ǲ�����Ϣ�� ~~ 

1) ���ֻ������� div �Ķ�����/��ײ����� div �е�Ԫ�ز�߻�����䡣�����������Ա���ʹ���κΡ�����ģ����ѧ������ע�⣬����� div ��������κβ������߿���Щ�������߿���������Ŀ����ӣ��ó� *�ܼ�* ��ȡ���Ҳ����ѡ��ɾ�� div �е�Ԫ�ص���䣬���ڸ�Ԫ�����������һ��û���κο�ȵ���������������� div��

*/

.content {

	padding: 10px 0;
}

/* ~~ ��ע ~~ */
.footer {
	width: 100%;
	padding: 10px 0;
	background: #CCC49F;
}

/* ~~ ��������/����� ~~ */
.fltrt {  /* �����������ҳ����ʹԪ�����Ҹ���������Ԫ�ر���λ������ҳ���ϵ�����Ԫ��֮ǰ�� */
	float: right;
	margin-left: 8px;
}
.fltlft { /* �����������ҳ����ʹԪ�����󸡶�������Ԫ�ر���λ������ҳ���ϵ�����Ԫ��֮ǰ�� */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* ����� #container ��ɾ�����Ƴ��� #footer������Խ���������� <br /> ��� div �У���Ϊ #container �����һ������ div ֮�������Ԫ�� */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->

.table-a table{border:1px solid #00CCFF} 
/* cssע�ͣ�ֻ��table��ǩ���ú�ɫ�߿���ʽ */ 
</style>
</head>
<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""style='text-decoration:none;'><font color="black">С���������ϵͳ</font></a></h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Exit.jsp" style='text-decoration:none;'><font color="black"><b>�˳�</b></font></a>&nbsp;&nbsp;<a href="HomePage.jsp" style='text-decoration:none;'><font color="black"><b>������ҳ</b></font></a></td></tr>
</table>
<body>

<div class="container">
  <div class="header">
   �����ڵ�λ�ã�ϵͳ��ҳ-><a href="Center.jsp"><font color="black">��������</font></a>-><b>�˻���ȫ</b>-><b>�û���֤</b>-><b>�޸�����</b>
  </div>
  <div class="content">
    <div  class="table-a">
    <table width="208"  align="left" >
  <tr>
    <td bgcolor="#00CCFF" ><a href="Center.jsp" style='text-decoration:none;'><span style="color: white">��������</span></a></td>
  </tr></table>
  <table width="725">
  <tr>
    <td bgcolor="#00CCFF" ><span style="color: white">�˻���ȫ</span></td>
  </tr></table>
  <table width="208" align="left" >
   <tr><td height="20" >&nbsp; </td></tr>
   <tr>
    <td height="37"><b><a href="Center.jsp" style='text-decoration:none;'><font color="black">������Ϣ</font></a></b></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="Individ.jsp" ><font color="black">�鿴������Ϣ</font></a></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="Secure.jsp"><font color="black">�˻���ȫ</font></a></td>
  </tr>
  <tr>
    <td height="37"><b>�ҵĴ���</b></td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;<a href="toLoan" ><font color="black">��Ҫ����</font></a></td>
  </tr>
   <tr>
    <td>&nbsp;&nbsp;<a href="Record.jsp"><font color="black">�����¼</font></a></td>
  </tr>
</table>
	<form id="form1" name="form1" method="post" action="changePass" onsubmit="return CheckForm()">
    <table width="725">
   <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û���</td>
  		<td width="485"><input type="text" name="userName" id="userName" value="<%=session.getAttribute("user")%>" onfocus="this.blur()"/></td>
    </tr>
    <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������</td>
  		<td width="485"><input type="password" name="newPassword" id="newPassword" value="" placeholder="������������" autocomplete="off"/></td>
    </tr>
    <tr>
    	<td width="224" height="69" background="image/suo.jpg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȷ��������</td>
  		<td width="368"><input type="password" name="confirmNewPassword" id="confirmNewPassword" value="" placeholder="������������ͬ" autocomplete="off"/></td>
    </tr>
    
    <tr align="left">
    	<td></td>
    	<td><input type="submit"  name="submit" id="submit" value="ȷ��" style="width:80px;height:30px" />
    		<input type="button"  name="cancel" id="cancel" value="ȡ��" style="width:80px;height:30px" onclick="window.location.href='Secure.jsp'" />
    	</td>
    </tr>
    
    </table>
    </form>
    <p/><p/> 
    <p/>
    <br></div></div>
    <!-- end .content --></div>
    </center></div>
  <div class="footer"><center><br>
    <p>���ĳ�Ʒ   ������Ʒ</p>
    <p>�������ձ���������ֻ������֮һ</p></center>
    <!-- end .footer --></div>
  
  
</body>
</html>
