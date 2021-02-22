<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>

<h2 align="center">Register</h2>
<body bgcolor="green">
<form action="reg">
<table border="1" align="center">
<tr>
<td>Id</td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>Username</td>
<td><input type="text" name="uname"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="text" name="pass">(password must be strong)</td>

</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>MobileNo:</td>
<td><input type="text" name="mobno"></td>
</tr>

<tr>
<td><input type="submit" value="register"></td>
</tr>
</form>
</body>
</html>