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
<title>Course Details</title>
<link rel="icon" href="../img/favicon.png" type="image/png" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="AdminNav.jsp" %>
</head>
<body>
<div class="container-fluid"">
<h4 class="text-center mt-5">All Course Details</h4>
<table class="table table-hover table-bordered table-dark">
<thead>
<tr>
<th class="scope" style="text-align: center;">Id:</th>
<th class="scope" style="text-align: center;">Course Name:</th>
<th class="scope" style="text-align: center;">Description:</th>
<th class="scope" style="text-align: center;">Month:</th>
<th class="scope" style="text-align: center;">Fees:</th>
<th class="scope" style="text-align: center;">Project:</th>
<th class="scope" style="text-align: center;">Trainer:</th>
<th class="scope" style="text-align: center;">Action:</th>
</tr>
</thead>

<tbody>
<% 
try
{
	Connection db = Conn.getCon();
	String q = "select * from course";
	PreparedStatement ps = db.prepareStatement(q);
	ResultSet rs = ps.executeQuery();
	while(rs.next())                                            
	{
		%>
		<tr class="table-light">
		<td class="bg-secondary text-body text-capitalize"><%= rs.getString("id") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("courseName") %></td>
		<td class="bg-secondary"><%= rs.getString("description") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("month") %></td>
		<td class="bg-secondary text-body text-capitalize"><%= rs.getInt("fees") %></td>
		<td class="text-body text-capitalize"><%= rs.getString("project") %></td>
		<td class="bg-secondary text-body text-capitalize"><%= rs.getString("trainer") %></td>	
		<td class="text-body text-capitalize"><a href="Update_Course.jsp?id=<%=rs.getString("id")%>" type="button" class="btn btn-success btn-sm mb-2">Update</a>
		<a href="Delete_Course.jsp?id=<%=rs.getString("id")%>" type="button" class="btn btn-warning btn-sm">Delete</a>
		</td>	
		</tr>
		
	<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</tbody>

</table>
</div>
</body>
</html>