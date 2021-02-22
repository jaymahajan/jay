<%@page import="com.cjc.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<h2 align="center">Student Data</h2>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function deleteRecord(){
	
      alert("Delete");
      document.myform.action="delete";
      document.myform.submit();     
}

function updateRecord(){
	
    alert("Update");
    document.myform.action="edit";
    document.myform.submit();     
}

function addRecord(){
	
    alert("Add");
    document.myform.action="add";
    document.myform.submit();     
}

</script>
</head>
<body bgcolor="blue">
<form name="myform">
<table border="1" align="center">
<tr>
<th>Sr No.</th>
<th>Id</th>
<th>Username</th>
<th>Password</th>
<th>Name</th>
<th>Mobile No.</th>
</tr>

<%List<Student> lists= (List)request.getAttribute("data") ;

    for(Student s: lists)
    {%>
      <tr>
      <td><input type="radio" name="id" value="<%=s.getId()%>">
      <td><%=s.getId() %></td>
      <td><%=s.getUname() %></td>
      <td><%=s.getPass() %></td>
      <td><%=s.getName() %></td>
      <td><%=s.getMobno() %></td>
      </tr>
   <% }%>
   <tr>
   <td><input type="button" value="delete" onclick="deleteRecord()"></td>
   <td><input type="button" value="update" onclick="updateRecord()"></td>
   <td><input type="button" value="add" onclick="addRecord()"></td>
   </tr> 

</table>
</form>
</body>
</html>