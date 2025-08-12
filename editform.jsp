<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<%@page import="abc.UserDao" %>
	<%@page import="abc.Users" %>
	
	<%
		String id=request.getParameter("id");
		int id1=Integer.parseInt(id);
		Users u=UserDao.getRecordById(id1);
	%>
	
	<h1>Edit Form</h1>
	<form action="edituser.jsp" method="post">
	<input type="hidden" name="id" value="<%=u.getId()%>"/>
	<table>
		<tr><td>Name:</td><td><input type="text" name="name" value="<%=u.getName() %>"/></td></tr>
		<tr><td>Password:</td><td><input type="password" name="password" value="<%=u.getPassword() %>"/></td></tr>
		<tr><td>email:</td><td><input type="email" name="email" value="<%=u.getEmail() %>"/></td></tr>
		
		<tr><td>Country:</td><td>
		<select name="country">
			<option>India</option>
			<option>USA</option>
			<option>Pakistan</option>
			<option>Other</option>
		</select>
		</td></tr>
		
		<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
	</table>
	
	</form>

</body>
</html>