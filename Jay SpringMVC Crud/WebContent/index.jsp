<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>First Page</title>
</head>
<h2 align="center">Login</h2>

<body bgcolor="red">
<form action="log">
<table border="1" align="center">
<tr>
<td>Username:</td>
<td><input type="text" name="uname"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="text" name="pass"></td>
</tr>

<tr>
<td><input type="submit" value="Login"></td>
<td><a href="register">New User</a></td>
</tr>

</table>
</form>
</body>
</html>