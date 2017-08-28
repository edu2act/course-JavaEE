<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.entity.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stu" class="com.entity.Student"></jsp:useBean>
	<jsp:setProperty property="stuId" name="stu" value="1" />
	<jsp:setProperty property="stuName" name="stu" value="zhangsan"/>
	
	<%
		Student s=(Student)pageContext.getAttribute("stu");
		out.print(s.getStuName());
	%>
</body>
</html>