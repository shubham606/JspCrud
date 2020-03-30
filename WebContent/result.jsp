<%@ include file="header.jsp" %>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.jspcrud.dao.UserDao"%>
<jsp:useBean id="u" class="com.jspcrud.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%
int i=UserDao.save(u);
if(i>0){
	response.sendRedirect("success.jsp");
	}else{
		response.sendRedirect("error.jsp");
		//<h3>("Oops..Something went wrong")</h3>
}
%>
</body>
</html>