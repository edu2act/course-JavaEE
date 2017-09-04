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
		String id=session.getId();
		out.print(id+"<br>");
		
		session.setAttribute("username", "张三");
		Object objName=session.getAttribute("username");
		out.print(objName+"<br>");
		
		session.removeAttribute("username");
		Object objName1=session.getAttribute("username");
		out.print(objName1+"<br>");
		
		//session.setMaxInactiveInterval(5);
		//session.invalidate();
	%>
</body>
</html>