<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Students</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">

</head>
<body>
<%@include file="AdminNav.jsp" %>
<h4 class="text-center mt-1 mb-1 text-warning"><b> "REGISTERED STUDENTS" </b></h4>
<table class="table table-bordered table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      <th scope="col">Branch</th>
      <th scope="col">Course</th>
      <th scope="col">Amount</th>
      <th scope="col">Address</th>
      <th scope="col">City</th>
      <th scope="col">Country</th>
      <th scope="col">Zip</th>
      <th scope="col">Category</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
    
    <% 
try
{
	Connection db = Conn.getCon();
	String q = "select * from reg";
	PreparedStatement ps = db.prepareStatement(q);
	ResultSet rs = ps.executeQuery();
	while(rs.next())                                            
	{
		%>
		<tr class="table-light col-10">
		<td class="bg-secondary text-light text-capitalize"><%= rs.getString("id") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("name") %></td>
		<td class="bg-secondary text-light"><%= rs.getString("phone") %></td>
		<td class="text-body "><%= rs.getString("email") %></td>
		<td class="bg-secondary text-light text-capitalize"><%= rs.getString("branch") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("course") %></td>
		<td class="bg-secondary text-light text-capitalize"><%= rs.getString("amount") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("address") %></td>
		<td class="bg-secondary text-light text-capitalize"><%= rs.getString("city") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("country") %></td>
		<td class="bg-secondary text-light text-capitalize"><%= rs.getString("zip") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("category") %></td>
		<td class="text-body text-capitalize">
		<!-- <a href="Update_Course.jsp?id=<%=rs.getString("id")%>" type="button" class="btn btn-success btn-sm mb-2">Update</a>  -->
		<a href="Delete_Reg.jsp?id=<%=rs.getString("id")%>" type="button" class="btn btn-warning btn-sm mb-2">Delete</a>
		</td>
    <%
	}}
    catch(Exception e){
    	e.printStackTrace();
    }
    
    
    %>
    
      </tbody>
</table>


</body>
</html>