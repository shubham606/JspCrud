<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Users</title>
</head>
<body>
<%@page import="com.jspcrud.dao.UserDao"%>
<%@page import="com.jspcrud.bean.User"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<center><h1>List Of Users</h1></center>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Email</th><th>Update</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td><a href="update.jsp?id=${u.getId()}">Update</a></td><td><a href="delete.jsp?id=${u.getId()}">Delete</a></td></tr>
                                                                                            
</c:forEach>
</table>
<br/><td><a href="signup.jsp"> New Registration</a>
</body>
</html>