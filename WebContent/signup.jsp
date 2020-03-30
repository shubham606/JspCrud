<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
<a href="registeredusers.jsp">All Records</a><br/>

<h1>Add New User</h1>
<center><h1>Enter Your Details </h1></center>
<form action ="result.jsp" method="post">
<table>
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
<tr><td>E-mail:</td><td><input type="email"name="email"/></td></tr>
<tr><td><input type="submit"value="Submit"/></td></tr>
</table>
</form>
</body>
</html>