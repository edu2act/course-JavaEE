<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.entity.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stu" class="com.entity.Student" scope="session"></jsp:useBean>
	<jsp:setProperty property="id" name="stu" value="1"/>
	<jsp:getProperty property="id" name="stu"/>
	
	<%--
		Student stu1=new Student();
		stu1.setId(2);
		session.setAttribute("stus", stu1);
	--%>
	
	<jsp:useBean id="stus" type="com.entity.Student" scope="session"></jsp:useBean>
	<jsp:getProperty property="id" name="stus"/>
</body>
</html>