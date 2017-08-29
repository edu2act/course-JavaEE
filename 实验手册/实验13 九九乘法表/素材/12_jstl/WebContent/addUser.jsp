<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addUsers</title>
</head>
<body>
<%@page import="com.DbConnection"%>
<%
	DbConnection db = new DbConnection();
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	boolean result = db.insert(userName, password);
	request.setAttribute("result", result);
%>
<c:if test="${result==true}">
	<c:redirect url="login.jsp" />
</c:if>
<c:if test="${result==false}">
	<c:redirect url="register.jsp" />
</c:if>
</body>
</html>