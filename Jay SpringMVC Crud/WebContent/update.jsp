<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<h2 align="center">Update Data</h2>
</head>
<body bgcolor="red">
<form action="update">
<input type="hidden" name="id" value=${s.id}>
<table border="1">

<tr>
<td>Username:-</td>
<td><input type="text" name="uname" value=${s.uname}></td>
</tr>
<tr>
<td>Password:-</td>
<td><input type="text" name="pass" value=${s.pass}></td>
</tr>
<tr>
<td>Name:-</td>
<td><input type="text" name="name" value=${s.name}></td>
</tr>
<tr>
<td>Mobile No:-</td>
<td><input type="text" name="mobno" value=${s.mobno}></td>
</tr>
<tr>
<td><input type="submit" value="update"></td>

</table>

</form>
</body>
</html>