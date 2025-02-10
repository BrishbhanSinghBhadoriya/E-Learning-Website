<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String course = request.getParameter("course");
String description = request.getParameter("description");
String month= request.getParameter("month");
String fees = request.getParameter("fees");
int fee = Integer.parseInt(fees);
String project = request.getParameter("project");
String trainer = request.getParameter("trainer");
int i;
try
{
	Connection db = Conn.getCon();
	String ins = "insert into course(courseName,description,month,fees,project,trainer)values(?,?,?,?,?,?)";
    PreparedStatement ps = db.prepareStatement(ins);
    ps.setString(1, course);
    ps.setString(2, description);
    ps.setString(3, month);
    ps.setInt(4, fee);
    ps.setString(5, project);
    ps.setString(6, trainer);
    
    i=ps.executeUpdate();
    if(i>0)
    {
    	response.sendRedirect("Table.jsp");
    }
    else{
    	response.sendRedirect("course_form.jsp");
    }
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>