<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete_Course</title>
<link rel="icon" href="../img/favicon.png" type="image/png" />
</head>
<body>
<%

String id = request.getParameter("id");

try
{
	Connection db = Conn.getCon();
	String q = "delete from course where id ='"+id+"'";
	PreparedStatement ps = db.prepareStatement(q);
	int i = ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("Table.jsp");
	}
	else
	{
		out.print("Error");
		RequestDispatcher rd = request.getRequestDispatcher("Delete_Course.jsp");
		rd.include(request, response);
	}
}
catch (Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>