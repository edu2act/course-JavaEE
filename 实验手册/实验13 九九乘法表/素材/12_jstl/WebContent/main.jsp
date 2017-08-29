<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>九九乘法表</title>
</head>
<body bgcolor="#CECEF6">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach begin="1" end="9" step="1" var="i">
<c:forEach begin="1" end="${i}" step="1" var="j">
<c:out value="${i}X ${j}="/>
<c:out value="${i*j}" />
&nbsp;&nbsp;
</c:forEach>
<br/>
</c:forEach>
</body>
</html>