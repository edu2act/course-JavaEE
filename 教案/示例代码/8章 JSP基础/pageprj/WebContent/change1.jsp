<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 声明 -->
	<%! int num = 10; %>
	<!-- 表达式 -->
	<%= num %>
	<br>
	<!-- 脚本 -->
	<%
		for(int i=0;i<10;i++)
			out.print(i+"&nbsp;&nbsp;");
		num = 20;
	%>
</body>
</html>