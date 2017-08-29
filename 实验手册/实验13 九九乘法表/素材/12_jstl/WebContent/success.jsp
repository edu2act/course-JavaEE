<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
</head>
<body>
<c:if test="${user==null}">
<c:out value="you not login"/>
<a href="login.jsp">login</a>
</c:if>
<c:if test="${user!=null}">
<center>
<table bgcolor="yellow" width="80%">
	<tr>
		<td>userID</td>
		<td>userName</td>
		<td>password</td>
	</tr>
	<c:forEach items="${list}" var="user">
	<tr>
		<td>${user.id}</td>
		<td>${user.userName}</td>
		<td>${user.password}</td>
	</tr>
	</c:forEach>
</table>
</center>
</c:if>
</body>
</html>