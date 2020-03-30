<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
<%@page import="com.jspcrud.dao.UserDao"%>
<%@page import="com.jspcrud.bean.User"%><%-- 
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<center><h1>Edit Form</h1></center>
<form action="updateuser.jsp" method="post">
 <input type="hidden" name="id" value="<%=u.getId() %>"/>
 <table> 
<tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>

<tr><td colspan="2"><input type="submit" value="Update"/></td></tr>
</table>
</form>

</body>
</html>