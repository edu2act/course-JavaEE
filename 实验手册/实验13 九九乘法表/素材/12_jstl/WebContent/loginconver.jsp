<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录处理页面</title>
</head>
<body>
<%@page import="com.*"%>
<%@page import="java.util.*"%>
<%
	DbConnection db = new DbConnection();
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	User u = db.login(userName, password);
	session.setAttribute("user", u);
%>
<c:if test="${user!=null}">
	<%
		ArrayList<User> list = db.select();
			session.setAttribute("list", list);
	%>
	<c:redirect url="success.jsp"></c:redirect>
</c:if>
<c:if test="${user==null}"></c:if>
<c:redirect url="login.jsp"></c:redirect>
</body>
</html>