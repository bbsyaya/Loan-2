<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<title>用户申请表</title>

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
  width: 1100px;
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
#preview0{width:200px;height:200px;border:1px solid #000;overflow:hidden;}
#imghead0 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
#preview1{width:200px;height:200px;border:1px solid #000;overflow:hidden;}
#imghead1 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
#preview2{width:200px;height:200px;border:1px solid #000;overflow:hidden;}
#imghead2 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
#preview3{width:200px;height:200px;border:1px solid #000;overflow:hidden;}
#imghead3 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
-->

.table-a table{border:1px solid #00CCFF} 
.STYLE1 {color: #0099FF}
.STYLE2 {color: #0099FF; font-weight: bold; }
.STYLE3 {color: #FF0000}
</style>
<script language="javascript" src="js/img.js"></script>
<script language="javascript">
	function CheckForm()
	{
		var num=document.getElementById("account").value;
		var pur=document.getElementById("purpers").value;
		var life=document.getElementById("loanLife").value;
		var idcard=document.getElementById("IDCard").value;
		var hid=document.getElementById("homeID").value;
		var cid=document.getElementById("companyID").value;
		var gid=document.getElementById("guarantorID").value;
		if(num=="")
		{
			alert("请输入贷款金额");
			document.form1.account.focus();
			return false;
		}
		else if(!isNum(num))
		{
			alert("贷款金额必须是整数");
			document.form1.account.focus();
			return false;
		}
		else if(num.length>7)
		{
			alert("贷款金额过大(1千万以内)。\n请重新输入。或取消贷款");
			document.form1.account.focus();
			return false;
		}
		else if(pur=="")
		{
			alert("请输入贷款用途");
			document.form1.purpers.focus();
			return false;
		}
		else if(pur.length>30)
		{
			alert("贷款用途请保持在30字以内");
			document.form1.purpers.focus();
			return false;
		}
		else if(life=="")
		{
			alert("请输入还款期限，单位月");
			document.form1.loanLife.focus();
			return false;
		}
		else if(!isNum(life))
		{
			alert("期限必须是整数");
			document.form1.loanLife.focus();
			return false;
		}
		else if(life.length>2)
		{
			alert("还款期限不应超过100个月，请重新填写，或者取消贷款");
			document.form1.loanLife.focus();
			return false;
		}
		else if(idcard=="")
		{
			alert("您未上传本人身份证照");
			document.form1.IDCard.focus();
			return false;
		}
		else if(hid=="")
		{
			alert("您未上传户口本照");
			document.form1.homeID.focus();
			return false;
		}
		else if(cid=="")
		{
			alert("您未上传公司执照");
			document.form1.companyID.focus();
			return false;
		}
		else if(gid=="")
		{
			alert("您未上传担保人身份证照");
			document.form1.guarantorID.focus();
			return false;
		}
		else
		{
			return true;
		}
	}
	
	function isNum(str)
	{
		var num=/^\d+$/;
		if(num.test(str))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
</script>
</head>

<body>
<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Exit.jsp" style='text-decoration:none;'><font color="black"><b>退出</b></font></a>&nbsp;&nbsp;<a href="HomePage.jsp" style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
  </table>
<div class="container">
  <div class="header">
   您现在的位置：系统首页-><a href="Center.jsp"><font color="black">个人中心</font></a>-><b>贷款申请表</b>
  </div>
  <div class="content">
  <table width="1100" border="0" >
  <tr>
    <td bgcolor="#00CCFF" ><span style="color: white">贷款申请表</span></td>
  </tr></table>
  <form id="form1" name="form1" action="toLoan" enctype="multipart/form-data" method="post" onsubmit="return CheckForm()" >
   <table width="1100" border="1" cellpadding="2" cellspacing="0" bgcolor="#CCCFFF">
   <c:choose>
 	<c:when test="${!(empty loaninfo) }">
   	<c:forEach items="${loaninfo}" var="loan">
  <tr>
    <td colspan="10"><div align="center" class="STYLE2">贷款申请表填写</div></td>
    </tr>
  <tr>
    <td width="47" rowspan="6"><p align="left" class="STYLE1">个人信息</p>      </td>
    <td width="95" rowspan="4"><div align="center"><span class="STYLE1">基本信息</span>
    </div>    <p align="center">&nbsp;</p></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">姓名</span></div></td>
    <td width="176"><span class="STYLE1">
      <input type="text" name="realName" id="realName" value="${loan.realName}" onfocus="this.blur()" />
    </span></td>
    <td width="64"><span class="STYLE1">性别</span></td>
    <td width="176"><span class="STYLE1">
      <input type="text" name="sex" id="sex" value="${loan.sex}" onfocus="this.blur()" />
    </span></td>
    <td width="64"><span class="STYLE1">身份证号</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input style="width:300px" type="text" name="paperID" id="paperID" value="${loan.paperID}" onfocus="this.blur()"/>
    </span></td>
    </tr>
  <tr>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">婚姻状况</span></div></td>
    <td><span class="STYLE1">
      <select name="marriage" id="marriage">
        <option value="已婚">已婚</option>
        <option value="未婚">未婚</option>
            </select>
    </span></td>
    <td><span class="STYLE1">手机号码</span></td>
    <td><span class="STYLE1">
      <input type="text" name="mobilePhone" id="mobilePhone" value="${loan.mobilePhone}" onfocus="this.blur()" />
    </span></td>
    <td><span class="STYLE1">家庭人口</span></td>
    <td width="176"><span class="STYLE1">
      <input type="text" name="peopleNum" id="peopleNum" value="" />
    </span></td>
    <td width="64"><span class="STYLE1">健康状况</span></td>
    <td width="62"><span class="STYLE1">
      <select name="userHealth" id="userHealth">
        <option value="优">优</option>
        <option value="良">良</option>
        <option value="差">差</option>
        </select>
    </span></td>
  </tr>
  <tr>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">户籍所在地</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="household_address"  id="household_address" value="" style="width:400px" />
    </span></td>
    <td><span class="STYLE1">文化程度</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <select name="education" id="education">
        <option value="不祥">不祥</option>
        <option value="小学">小学</option>
        <option value="初中">初中</option>
        <option value="高中">高中</option>
        <option value="本科">本科</option>
        <option value="硕士">硕士</option>
        <option value="博士及以上">博士及以上</option>
            </select>
    </span></td>
    </tr>
  <tr>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">现居地</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="address" id="address" value="${loan.address}" onfocus="this.blur()" style="width:400px" />
    </span></td>
    <td><span class="STYLE1">邮编</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="postcode" id="postcode" value="" />
    </span></td>
    </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">公司信息</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">公司</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="companyName" id="companyName" value="" />
    </span></td>
    <td><span class="STYLE1">执照</span></td>
    <td><span class="STYLE1">
      <input type="text" name="companyLicense" id="companyLicense" value="" />
    </span></td>
    <td><span class="STYLE1">公司电话</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="companyTele" id="companyTele" value="" />
    </span></td>
    </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">收入状况</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">月均收入</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="income" id="income" value="" />
    </span></td>
    <td><span class="STYLE1">家庭存款</span></td>
    <td colspan="5"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="deposit"  id="deposit" value="" />
    </span></td>
    </tr>
  <tr>
    <td rowspan="4"><p align="left"><span class="STYLE1">担保人信息</span></p>      </td>
    <td rowspan="2"><div align="center"><span class="STYLE1"></span><span class="STYLE1">基本信息</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">姓名</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="guarantor" id="guarantor" value="" />
    </span></td>
    <td><span class="STYLE1">性别</span></td>
    <td><span class="STYLE1">
      <select name="guaSex" id="guaSex">
        <option value="男">男</option>
        <option value="女">女</option>
            </select>
    </span></td>
    <td><span class="STYLE1">身份证号</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaPaperID" id="guaPaperID" value="" style="width:300px" />
    </span></td>
    </tr>
  <tr>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">家庭住址</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaAddress" id="guaAddress" value="" style="width:400px" />
    </span></td>
    <td><span class="STYLE1">邮编</span></td>
    <td><span class="STYLE1">
      <input type="text" name="guaPostcode" id="guaPostcode" value="" />
    </span></td>
    <td><span class="STYLE1">健康状况</span></td>
    <td><span class="STYLE1">
      <select name="guaHealth" id="guaHealth">
        <option value="优">优</option>
		<option value="良">良</option>
		<option value="差">差</option>
      </select>
    </span></td>
  </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">收入状况</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">月均收入</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="guaIncome" id="guaIncome" value="" />
    </span></td>
    <td><span class="STYLE1">家庭存款</span></td>
    <td colspan="5"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaDeposit" id="guaDeposit" value="" />
    </span></td>
    </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">工作</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">工作单位</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaCompany" id="guaCompany" value="" style="width:400px"/>
    </span></td>
    <td><span class="STYLE1">单位电话</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaCompTel" id="guaCompTel" value="" />
    </span></td>
    </tr>
  <tr>
    <td rowspan="2"><p align="left"><span class="STYLE1">贷款</span></p>      </td>
    <td rowspan="2">
          <div align="center"><span class="STYLE1"></span><span class="STYLE1">贷款信息</span></div></td><td x:str="x:str" width="112"><div align="left"><span class="STYLE1">贷款金额</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="account" id="account" value="" placeholder="不能为空，单位元" autocomplete="off" />
    </span></td>
    <td><span class="STYLE1">贷款用途</span></td>
    <td colspan="5"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="purpers" id="purpers" value="" style="width:400px" placeholder="贷款用途不能为空,30字内"  autocomplete="off"/>
    </span></td>
    </tr>
  <tr>
    <td width="112" height="43" x:str="x:str"><div align="left"><span class="STYLE1">汇款账户</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="bankCard" id="bankCard" value="" style="width:300px" />
    </span></td>
    <td><span class="STYLE1">还款期限</span></td>
    <td colspan="3"><span class="STYLE1">
      <input type="text" name="loanLife" id="loanLife" value="" placeholder="不能为空，单位月" autocomplete="off"/>
    月</span></td>
    </tr>
    </c:forEach>
      </c:when>
      </c:choose> 
</table>
<table width="1100" border="0">
	<tr style="width:1100">
		<td bgcolor="#00CCFF"><div align="left">上传本人身份证照</div></td>
		<td bgcolor="#00CCFF"><div align="left">上传户口本照</div></td>
		<td bgcolor="#00CCFF"><div align="left">上传公司执照</div></td>
		<td bgcolor="#00CCFF"><div align="left">上传担保人身份证照</div></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>
		  <div align="left">
		    <input type="file" name="IDCard" id="IDCard" value="" style="width:200px" onchange="previewImage0(this)"/>		  
		    </div></td>
		<td>
		  <div align="left">
		    <input type="file" name="homeID" id="homeID" value="" style="width:200px" onchange="previewImage1(this)"/>		  
		    </div></td>
		<td>
		  <div align="left">
		    <input type="file" name="companyID" id="companyID" value="" style="width:200px" onchange="previewImage2(this)"/>		  
		    </div></td>
		<td>
		  <div align="left">
		    <input type="file" name="guarantorID" id="guarantorID" value="" style="width:200px" onchange="previewImage3(this)"/>		  
		    </div></td>
		<td><div align="left"><input type="button" id="button" name="button"  value="返回" style="width:80px;height:30px" onclick="window.location.href='loanRecord'" />
		  </div></td>
		<td><div align="center"><input type="submit" id="submit" name="submit"  value="提交" style="width:80px;height:30px" /></div></td>
		<td><div align="center"><input type="reset" id="reset" name="reset"  value="重置" style="width:80px;height:30px"/></div></td>
	</tr>
	<tr>
		<td><div id="preview0">
    			<img id="imghead0" width="200px" height="200" border="0" src="image/hi.jpg" />
			</div></td>
		<td><div id="preview1">
    			<img id="imghead1" width="200px" height="200" border="0" src="image/hi.jpg" />
			</div></td>
		<td><div id="preview2">
    			<img id="imghead2" width="200px" height="200" border="0" src="image/hi.jpg" />
			</div></td>
		<td><div id="preview3">
    			<img id="imghead3" width="200px" height="200" border="0" src="image/hi.jpg" />
			</div></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>

    </form>
    <p/><p/> 
    <p/>
    <br></div></div>
    <!-- end .content --></div>
</body>
</html>
