<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="abc.UserDao"%>

<%@ page import="abc.Users"%>

<jsp:useBean id="u" class="abc.Users"></jsp:useBean>

<jsp:setProperty property="*" name="u"/>

<%

int i = UserDao.save(u);

if(i>0){

response.sendRedirect("adduser_success.jsp");

}else{

response.sendRedirect("adduser_error.jsp");

}

%>

</body>
</html>