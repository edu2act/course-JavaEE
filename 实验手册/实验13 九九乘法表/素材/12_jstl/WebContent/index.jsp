<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>

<!-- c_catch ,c_out demo -->
<c:catch var="myException">
	<%
		int i = 0;
			int j = 10 / i;
	%>
</c:catch>
<hr />
异常：
<c:out value="${myException}" />
<hr />
异常Exception.getMessage()=
<c:out value="${myException.message}" default="users" />
<hr />
异常Exception.getCause=
<c:out value="${myException.cause}" default="users" />

<hr />
<!-- c:set,c:remove demo  -->
<c:set var="num1" value="${4*4}" />
<c:set var="num2">
${2*8}
</c:set>


<c:out value="num1=" />
<c:out value="${num1}"/>


<c:out value="num2=" />
<c:out value="${num2}" />
<br />

<c:remove var="num1" scope="page" />
<c:out value="num1=" />
<c:out value="${num1}" />
<br />

<c:remove var="num2" scope="session" />
<c:out value="num2=" />
<c:out value="${num2}" />

<hr />
<hr />
<jsp:useBean id="user" class="com.Users" scope="session"></jsp:useBean>
<c:set target="${user}" property="userName"  value="mengsy" />
<c:set target="${user}" property="password" value="123456" />
<c:set target="${user}" property="email" value="mengsy831120@163.com"/>
<c:set target="${user}" property="limits" value="1"/>
JSTL c:if 的使用
<c:if test="${user.userName!=null}">
hello ${user.userName},your password is ${user.password},your email is ${user.email}
</c:if>
<br/>
<c:choose>
<c:when test="${user.limits==1}">
<c:out value="Hello ${user.userName} your are 管理员"></c:out>
</c:when>
<c:when test="${user.limits==2}">
<c:out value="Hello ${user.userName} your are 版主"></c:out>
</c:when>
<c:when test="${user.limits==3}">
<c:out value="Hello ${user.userName} your are 普通会员"></c:out>
</c:when>
</c:choose><br/>
<c:forEach begin="1" end="5" step="1" var="i">
<c:set target="${user}" property="userName"  value="user${i}" />
<c:set target="${user}" property="password" value="password${i}" />
<c:set target="${user}" property="email" value="emial${i}"/>
<c:set target="${user}" property="limits" value="${i}"/>
hello ${user.userName},your password is ${user.password},your email is ${user.email},your limits is ${user.limits }<br/>
</c:forEach>
</body>
</html>