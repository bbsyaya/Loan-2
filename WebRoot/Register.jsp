<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>���û�ע�� ��д�˻���Ϣ</title>
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
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">С���������ϵͳ</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Login.jsp" style='text-decoration:none;'><font color="black"><b>��¼</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp"style='text-decoration:none;'><font color="black"><b>������ҳ</b></font></a></td></tr>
</table>

<div class="container">
  <div class="header">
   &nbsp;&nbsp;&nbsp;&nbsp; �����ڵ�λ�ã�ϵͳ��ҳ->ע��-><b>��д�˻���Ϣ</b>
  </div>
  <center>
  <div class="content">
    <h1><img src="image/first.jpg" width="920" height="49" /></h1>
    <div  class="table-a">
    <table width="920" >
  <tr>
    <td bgcolor="#00CCFF"><span style="color: white">�˻���Ϣ</span></td>
  </tr>
  </table>
  
    <table width="920">
      <tr>
        <td width="350" height="69" align="right">�û���</td>
        <td width="168">
          <label for="name"></label>
          <input type="text" name="userName" id="userName" height="50px" placeholder="�����������û���" autocomplete="off"/>
        </td>
        <td width="374"></td>
      </tr>
      <tr>
        <td width="350" height="60" align="right">����</td>
        <td>
        <label for="password"></label>
          <input type="password" name="password" id="password" height="50px" placeholder="������6-12���ַ���" autocomplete="off"/>
        </td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="59" align="right">ȷ������</td>
        <td>
          <label for="confirmPassword"></label>
          <input type="password" name="confirmPassword" id="confirmPassword"  height="50px" placeholder="������������ͬ" autocomplete="off"/>
      	</td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">�ܱ�����</td>
        <td>
          <label for="question"></label>
          <select name="question" id="question"  style="width:157px">
          	<option value="����ϲ����ʳ����ʲô">����ϲ����ʳ����ʲô��</option>
            <option value="����Ӱ����������˭">����Ӱ����������˭��</option>
            <option value="�ҵİ�����ʲô">�ҵİ�����ʲô��</option>
          </select>
        </td>
        <td></td>
      </tr>
      <tr>
        <td width="350" height="57" align="right">�ܱ������</td>
        <td>
          <label for="answer"></label>
          <input type="text" name="answer" id="answer"  height="50px" placeholder="���������Ĵ�" autocomplete="off"/>
        </td>
        <td></td>
      </tr>
    </table>
    <p/><p/> 
    <div>
    <table><tr>
     <td align="right"> <input type="radio" name="radio" id="radio"  /></td> <td>  <b>�����Ķ���ͬ�����ء��û�ע��Э�顷</b>
      <label for="agree"></label>
    </td></tr>
    </table>
    <p/>
    <br>
    <input type="submit"  name="next" value="��һ��" style="width:80px;height:40px"/>
    <input type="button"  name="cancel" value="ȡ��" style="width:80px;height:40px" onclick="window.location.href='index.jsp'"/>


</div></div>
    <!-- end .content --></div>
    </center></div>
  <div class="footer"><center><br>
    <p>���ĳ�Ʒ   ������Ʒ</p>
    <p>�������ձ���������ֻ������֮һ</p></center>
    <!-- end .footer --></div>
  
</form>
</body>
</html>
