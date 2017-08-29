<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
<center>
user register information：
<br />
<hr />
<form action="loginconver.jsp" method="post">
<table>
	<tr>
		<td>userName:<input type="text" name="userName" /></td>
	</tr>
	<tr>
		<td>Password:<input type="password" name="password" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="login" /></td>
	</tr>
</table>
</form>
</center>
</body>
</html>