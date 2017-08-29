<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="f" uri="http://localhost:8080/08-03/choose"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<f:choose>
	<f:when test="${param.name=='zg' }">
	  welcome, ${param.name}
	</f:when>
	<f:when test='${param.name=="slp" }'>
	she is boss!
	</f:when>
	<f:otherwise>
	  sorry!
	</f:otherwise>
</f:choose>
</body>
</html>