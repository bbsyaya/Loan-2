<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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

#preview0{width:200px;height:275px;border:1px solid #000;overflow:hidden;}
#imghead0 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
#preview1{width:200px;height:275px;border:1px solid #000;overflow:hidden;}
#imghead1 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
#preview2{width:200px;height:275px;border:1px solid #000;overflow:hidden;}
#imghead2 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
#preview3{width:200px;height:275px;border:1px solid #000;overflow:hidden;}
#imghead3 {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}

-->

.table-a table{border:1px solid #00CCFF} 
.STYLE1 {color: #0099FF}
.STYLE2 {color: #0099FF; font-weight: bold; }
.STYLE3 {color: #FF0000}
</style></head>

<body>
<table width="100%"  align="left" >
<tr>
  <td  background="image/title1.jpg" height="100" width=120% nowrap valign="bottom"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href=""style='text-decoration:none;'><font color="black">小额贷款在线系统</font></h1></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Exit.jsp" style='text-decoration:none;'><font color="black"><b>退出</b></font></a>&nbsp;&nbsp;<a href="HomePage.jsp" style='text-decoration:none;'><font color="black"><b>返回首页</b></font></a></td></tr>
  </table>
<div class="container">
  <div class="header">
   您现在的位置：系统首页-><a href="Center.jsp"><font color="black">个人中心</font></a>-><b>贷款申请表信息</b>
  </div>
  <div class="content">
  <table width="1100" border="0" >
  <tr>
    <td bgcolor="#00CCFF" ><span style="color: white">贷款申请表信息</span></td>
  </tr></table>
  <form id="form" name="form" action="toLoan" method="post" onsubmit="" >
  
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
        <option value="">${loan.marriage}</option>
            </select>
    </span></td>
    <td><span class="STYLE1">手机号码</span></td>
    <td><span class="STYLE1">
      <input type="text" name="mobilePhone" id="mobilePhone" value="${loan.mobilePhone}" onfocus="this.blur()" />
    </span></td>
    <td><span class="STYLE1">家庭人口</span></td>
    <td width="176"><span class="STYLE1">
      <input type="text" name="peopleNum" id="peopleNum" value="${loan.peopleNum}" />
    </span></td>
    <td width="64"><span class="STYLE1">健康状况</span></td>
    <td width="62"><span class="STYLE1">
      <select name="userHealth" id="userHealth">
        <option value="">${loan.userHealth}</option>
        </select>
    </span></td>
  </tr>
  <tr>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">户籍所在地</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="household_address"  id="household_address" value="${loan.household_address}" style="width:400px" />
    </span></td>
    <td><span class="STYLE1">文化程度</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <select name="education" id="education">
        <option value="">${loan.education}</option>
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
      <input type="text" name="postcode" id="postcode" value="${loan.postcode}" />
    </span></td>
    </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">公司信息</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">公司</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="companyName" id="companyName" value="${loan.companyName}" />
    </span></td>
    <td><span class="STYLE1">执照</span></td>
    <td><span class="STYLE1">
      <input type="text" name="companyLicense" id="companyLicense" value="${loan.companyLicense}" />
    </span></td>
    <td><span class="STYLE1">公司电话</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="companyTele" id="companyTele" value="${loan.companyTele}" />
    </span></td>
    </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">收入状况</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">月均收入</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="income" id="income" value="${loan.income}" />
    </span></td>
    <td><span class="STYLE1">家庭存款</span></td>
    <td colspan="5"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="deposit"  id="deposit" value="${loan.deposit}" />
    </span></td>
    </tr>
  <tr>
    <td rowspan="4"><p align="left"><span class="STYLE1">担保人信息</span></p>      </td>
    <td rowspan="2"><div align="center"><span class="STYLE1"></span><span class="STYLE1">基本信息</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">姓名</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="guarantor" id="guarantor" value="${loan.guarantor}" />
    </span></td>
    <td><span class="STYLE1">性别</span></td>
    <td><span class="STYLE1">
      <select name="guaSex" id="guaSex">
        <option value="">${loan.guaSex}</option>
            </select>
    </span></td>
    <td><span class="STYLE1">身份证号</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaPaperID" id="guaPaperID" value="${loan.guaPaperID}" />
    </span></td>
    </tr>
  <tr>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">家庭住址</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaAddress" id="guaAddress" value="${loan.guaAddress}" style="width:400px" />
    </span></td>
    <td><span class="STYLE1">邮编</span></td>
    <td><span class="STYLE1">
      <input type="text" name="guaPostcode" id="guaPostcode" value="${loan.guaPostcode}" />
    </span></td>
    <td><span class="STYLE1">健康状况</span></td>
    <td><span class="STYLE1">
      <select name="guaHealth" id="guaHealth">
        <option value="">${loan.guaHealth}</option>
      </select>
    </span></td>
  </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">收入状况</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">月均收入</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="guaIncome" id="guaIncome" value="${loan.guaIncome}" />
    </span></td>
    <td><span class="STYLE1">家庭存款</span></td>
    <td colspan="5"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaDeposit" id="guaDeposit" value="${loan.guaDeposit}" />
    </span></td>
    </tr>
  <tr>
    <td><div align="center"><span class="STYLE1">工作</span></div></td>
    <td x:str="x:str" width="112"><div align="left"><span class="STYLE1">工作单位</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaCompany" id="guaCompany" value="${loan.guaCompany}" style="width:400px"/>
    </span></td>
    <td><span class="STYLE1">单位电话</span></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="guaCompTel" id="guaCompTel" value="${loan.guaCompTel}" />
    </span></td>
    </tr>
  <tr>
    <td rowspan="2"><p align="left"><span class="STYLE1">贷款</span></p>      </td>
    <td rowspan="2">
          <div align="center"><span class="STYLE1"></span><span class="STYLE1">贷款信息</span></div></td><td x:str="x:str" width="112"><div align="left"><span class="STYLE1">贷款金额</span></div></td>
    <td><span class="STYLE1">
      <input type="text" name="account" id="account" value="${loan.account}" />
    </span></td>
    <td><span class="STYLE1">贷款用途</span></td>
    <td colspan="5"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="purpers" id="purpers" value="${loan.purpers}" style="width:400px" />
    </span></td>
    </tr>
  <tr>
    <td width="112" height="43" x:str="x:str"><div align="left"><span class="STYLE1">汇款账户</span></div></td>
    <td colspan="3"><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1"></span><span class="STYLE1">
      <input type="text" name="bankCard" id="bankCard" value="${loan.bankCard}" style="width:300px" />
    </span></td>
    <td><span class="STYLE1">还款期限</span></td>
    <td colspan="3"><span class="STYLE1">
      <input type="text" name="loanLife" id="loanLife" value="${loan.loanLife}" />
    月</span></td>
    </tr>
	<tr>
	  <td colspan="3" width="200px"><div align="center">下载: <a  href="userDownload?path=${loan.IDCardPhoto}"><font color="blue">身份证照</font></a></div></td>
	  <td colspan="2" width="200px"><div align="center">下载: <a  href="userDownload?path=${loan.homeIDPhoto}"><font color="blue">户口本照</font></a></div></td>
	  <td colspan="2" width="200px"><div align="center">下载: <a  href="userDownload?path=${loan.companyIDPhoto}"><font color="blue">公司执照</font></a></div></td>
	  <td colspan="3" width="200px"><div align="center">下载: <a  href="userDownload?path=${loan.guaIDCardPhoto}"><font color="blue">担保人身份证照</font></a></div></td>
	  </tr>
	<tr bgcolor="#FFFFFF">
		<td colspan="3"  align="center"><div id="preview0">
    			<img id="imghead0" width="200px" height="275" border="0" src="${loan.IDCardPhoto}" />
			</div></td>
		<td colspan="2"  align="center"><div id="preview1">
    			<img id="imghead1" width="200px" height="275" border="0" src="${loan.homeIDPhoto}" />
			</div></td>
		<td colspan="2"  align="center"><div id="preview2">
    			<img id="imghead2" width="200px" height="275" border="0" src="${loan.companyIDPhoto}" />
			</div></td>
		<td colspan="3" align="center"><div id="preview3">
    			<img id="imghead3" width="200px" height="275" border="0" src="${loan.guaIDCardPhoto}" />
			</div></td>
	</tr>
		</c:forEach>
      </c:when>
      </c:choose> 
</table>
<table width="1100" border="0">
	<tr>
		<td width="100px"><div align="right">
	    <input type="button" id="button" name="button"  value="返回" style="width:100px; height:30px;" onclick="window.location.href='loanRecord'" />
	    </div></td>
	</tr>
</table>
    </form>
    <p/><p/> 
    <p/>
    <br></div></div>
    <!-- end .content --></div>
</body>
</html>
