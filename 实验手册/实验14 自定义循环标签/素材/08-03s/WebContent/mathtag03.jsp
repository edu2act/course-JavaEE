<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="math" uri="http://localhost:8080/08-03/math03"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mathtag03</title>
</head>
<body>
Math functions:
<p />
<table border=1>
<math:functions num="${3*2}" pow="2" min="4" max="8">
<td>This is the body of the SimpleTag.</td></math:functions>
</table>
</body>
</html>