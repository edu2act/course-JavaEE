<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//从配置参数中获取驱动
	String driver = application.getInitParameter("driver");
	out.print(driver+"<br>");
	//从配置参数中获取数据库url
	String url = application.getInitParameter("url");
	out.print(url+"<br>");
	
	application.setAttribute("appname", "应用程序");
	Object appName=application.getAttribute("appname");
	out.print(appName+"<br>");
	application.removeAttribute("appname");
	Object appName1=application.getAttribute("appname");
	out.print(appName1+"<br>");
	
	String path=application.getRealPath("/");
	out.print(path+"<br>");
%>
</body>
</html>