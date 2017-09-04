<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="zuoyongyu.jsp" method="post">
		<input type="text" name="username" /><br>
		<input type="password" name="password" /><br>
		<input type="submit" value="login" />
	</form>

	<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Object obj=application.getAttribute("count");
		int count=0;
		if(obj!=null){
			count=((Integer)obj).intValue();
		}else{
			application.setAttribute("count", 0);
		}
		if(username!=null) {//实际项目可以验证用户登录是否成功
			count++;
			application.setAttribute("count", count);
			session.setAttribute("username", username);
		}
	%>
	在线人数：<%=count %><br>
	当前用户是：<%=session.getAttribute("username") %>
	
	<%
		request.setAttribute("requestkey", "requestvalue");
		//直接跳转
		//response.sendRedirect("zuoyongyujieguo.jsp");
		//转发请求
		//request.getRequestDispatcher("zuoyongyujieguo.jsp").forward(request, response);
	%>
	<br>
	<%
		pageContext.setAttribute("pagekey", "pagevalue");
	%>
	<%=pageContext.getAttribute("pagekey") %>
</body>
</html>