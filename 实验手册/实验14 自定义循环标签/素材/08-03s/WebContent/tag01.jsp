<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="test" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tag01</title>
</head>
<body>
please enter text.<br/>
The fields marked with a <test:tag01 /> are mandatory.
<form action="validateAddress.jsp">
<table><tr><td><test:tag01 />Street 1</td>
<td><input type="text" value="" name="street1" /></td></tr>
<tr><td>Street 2</td>
<td><input type="text" value="" name="street2" /></td></tr>
<tr><td>Street 3</td>
<td><input type="text" value="" name="street3" /></td></tr>
<tr><td><test:tag01 />City </td>
<td><input type="text" value="" name="city" /></td></tr>
<tr><td><test:tag01 />State</td>
<td><input type="text" value="" name="state" /></td></tr>
<tr><td><test:tag01 />Zip</td>
<td><input type="text" value="" name="zip" /></td></tr></table>
</form>
</body>
</html>