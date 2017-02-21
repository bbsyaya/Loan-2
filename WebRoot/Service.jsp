<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>
	<table width="770px" border="1">
	<c:choose>
	<c:when test="${!(empty service) }">
   	<c:forEach items="${service}" var="info">
   	<tr>
   		<td>${info.content}</td>
   	</tr>
   	<tr>
   		<td><div align="right">${info.user}</div></td>
   	</tr>
   	<tr>
   		<td><div align="right">${info.date}</div></td>
   	</tr>
	</c:forEach>
	</c:when>
	</c:choose>
	</table>
</body>
</html>
