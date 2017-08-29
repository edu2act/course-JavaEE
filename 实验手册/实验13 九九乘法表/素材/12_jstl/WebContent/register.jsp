<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
<form action="addUser.jsp" name="form1" id="form1" method="post"><script
	type="text/javascript">
function sub(){
	var userName = document.getElementById("userName");
	var password = document.getElementById("password");
	var repassword = document.getElementById("repassword");
	if(userName.value==""||userName.value==null){
         alert("userName is not null");
		}else
	if(password.value!=(repassword.value)){
          alert("two password are not equals");
		}else{
            document.form1.submit();
			}
}
</script>
<table>
	<tr>
		<td>userName:</td>
		<td><input type="text" name="userName"  id="userName" /></td>
	</tr>
	<tr>
		<td>password:</td>
		<td><input type="password" name="password" id="password" /></td>
	</tr>
	<tr>
		<td>reWrite password:</td>
		<td><input type="password" name="repassword" id="repassword" /></td>
	</tr>
	<tr>
		<td><input type="button" value="submit" onclick="sub();" /></td>
		<td><input type="reset" value="reset" /></td>
	</tr>
</table>
</form>
</body>
</html>