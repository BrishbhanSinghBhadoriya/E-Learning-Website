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

String id= request.getParameter("id");
	int i=0;
try{
	
	Connection db = Conn.getCon();
	
	String q = "delete from admission where id='"+id+"'";
	PreparedStatement ps = db.prepareStatement(q);
	i=ps.executeUpdate();
	
	
	if(i>0){
		response.sendRedirect("Admission_list.jsp");
	}
	else{
		response.sendRedirect("Admission_list.jsp");
	}
	
	
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>