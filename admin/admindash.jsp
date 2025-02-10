<%@page import="com.sun.xml.internal.ws.api.ha.StickyFeature"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="icon" href="../img/favicon.png" type="image/png" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<% 
String email =(String)session.getAttribute("email").toString();
%>
<!-- <h4 class="text-center text-info"><%=email %></h4>  
<h4 class="text-center text-info">ADMIN PANEL</h4>-->
<%@include file="AdminNav.jsp" %>
</body>
</html>