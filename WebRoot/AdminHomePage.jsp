<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0037)http://2school.wygk.cn/admin/main.asp -->
 <HTML ><HEAD ><meta charset="UTF-8"><TITLE>小额担保贷款——首页</TITLE>

<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="images/style.css" type=text/css 
rel=stylesheet>
<STYLE>.main_left {
	TABLE-LAYOUT: auto; BACKGROUND: url(images/left_bg.gif)
}
.main_left_top {
	BACKGROUND: url(images/left_menu_bg.gif); PADDING-TOP: 3px
}
.main_left_title {
	PADDING-LEFT: 15px; FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #fff; TEXT-ALIGN: left
}
.left_iframe {
	BACKGROUND: none transparent scroll repeat 0% 0%; VISIBILITY: inherit; WIDTH: 130px; HEIGHT: 92%
}
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: tahoma, 宋体, fantasy
}
TD {
	 FONT-SIZE: 12px; FONT-FAMILY: tahoma, 宋体, fantasy
}
</STYLE>

<SCRIPT language=javaScript src="images/admin.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript 
src="images\Admin(1).js"></SCRIPT>

<SCRIPT>
var status = 1;
var Menus = new DvMenuCls;
document.onclick=Menus.Clear;
function switchSysBar(){
     if (1 == window.status){
		  window.status = 0;
		  switchPoint.innerHTML = '<img src="images/left.gif">';
          document.all("frmTitle").style.display="none"
     }
     else{
		  window.status = 1;
		 switchPoint.innerHTML = '<img src="images/right.gif">';
          document.all("frmTitle").style.display=""
     }
}
</SCRIPT>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR ></HEAD>
<BODY style="MARGIN: 0px" >
<DIV class=top_table>
<DIV class=top_table_leftbg>
<DIV class=system_logo>
<table><tr><td><font  size=6 color=white ><b>&nbsp;&nbsp;小额担保贷款</b></font></td></tr></table></DIV>
<TABLE align=right><TR><TD></TD> <TD><font size=4 color=white >欢迎您！${user.userName}&nbsp;&nbsp; <a href="AdminCenter.jsp"><b>管理中心</b></a></font></TD></TR></TABLE>
<DIV class=menu  >
<UL >
  <LI   id=menu_0><A 
  href="AdminHomePage.jsp" >首页</A> </LI>
    <LI id=menu_0 ><A 
  href="showAdminService">服务细则</A> 
 	</LI>
    <LI id=menu_0 ><A 
  href="Exit.jsp">退出系统</A> </LI>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></UL></DIV></DIV></DIV>
<DIV style="BACKGROUND: #337abb; HEIGHT: 8px"></DIV><!--导航部分结束-->
<TABLE style="BACKGROUND: #337abb" height="92%" cellSpacing=0 cellPadding=0 
width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=main_left id=frmTitle vAlign=top align=middle name="fmTitle">
      <TABLE class=main_left_top cellSpacing=0 cellPadding=0 width="100%" 
      border=0>
        <TBODY>
        <TR height=32>
          <TD vAlign=top></TD>
          <TD class=main_left_title id=leftmenu_title>常用快捷功能</TD>
          <TD vAlign=top align=right></TD></TR></TBODY></TABLE><IFRAME 
      class=left_iframe id=frmleft name=frmleft 
      src="images/left.htm" frameBorder=0 
      allowTransparency></IFRAME>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=32>
          <TD vAlign=top></TD>
          <TD vAlign=bottom align=middle></TD>
          <TD vAlign=top align=right></TD></TR></TBODY></TABLE></TD>
    <TD style="WIDTH: 10px" bgColor=#337abb>
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD style="HEIGHT: 100%" onclick=switchSysBar()><SPAN class=navPoint 
            id=switchPoint title=关闭/打开左栏><IMG 
            src="images/right.gif"></SPAN> 
        </TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width="100%" bgColor=#337abb>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#c4d8ed 
        border=0><TBODY>
        </TBODY></TABLE><IFRAME 
      class=main_iframe id=frmright name=frmright 
      src="images/syscome.htm" frameBorder=0 
      scrolling=yes></IFRAME>
      <TABLE style="BACKGROUND: #c4d8ed" cellSpacing=0 cellPadding=0 
      width="100%" border=0>
        <TBODY>
        <TR>
          <TD><IMG height=6 alt="" 
            src="images/teble_bottom_left.gif" 
            width=5></TD>
          <TD align=right><IMG height=6 alt="" 
            src="images/teble_bottom_right.gif" 
            width=5></TD>
          <TD align=right width=16 
  bgColor=#337abb></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<DIV id=dvbbsannounce_true style="DISPLAY: none"></DIV>
<SCRIPT language=JavaScript>
<!--
document.getElementById("dvbbsannounce").innerHTML = document.getElementById("dvbbsannounce_true").innerHTML;
//-->
</SCRIPT>
</BODY></HTML>
