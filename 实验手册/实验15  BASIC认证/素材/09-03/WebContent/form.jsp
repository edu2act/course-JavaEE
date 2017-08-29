<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.security.Principal"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
这个页面使用HTTP基本验证机制进行访问。
<br />
<%
	String remoteUser = request.getRemoteUser();
	boolean isAdmin = request.isUserInRole("tomcat");
	request.setAttribute("remoteUser", remoteUser);
	request.setAttribute("isAdmin", isAdmin);
	Principal  p = request.getUserPrincipal();

%>
欢迎你：${remoteUser}<br />
您拥有以下权限：<br />
${isAdmin?"管理，新增，修改，删除":"查询"}
</body>
</html>