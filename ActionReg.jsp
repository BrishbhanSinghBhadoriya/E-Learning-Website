<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.Conn"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.internal.org.objectweb.asm.commons.TryCatchBlockSorter"%>
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

String name= request.getParameter("name");
String phone= request.getParameter("phone");
String email= request.getParameter("email");
String branch= request.getParameter("branch");
String course= request.getParameter("course");
String fees= request.getParameter("amount");
int amount=Integer.parseInt(fees);
String address= request.getParameter("address");
String city= request.getParameter("city");
String country= request.getParameter("country");
String zip= request.getParameter("zip");
int z=Integer.parseInt(zip);
String category= request.getParameter("category");
int i=0;
try{
	   Connection db = Conn.getCon();
	   String q = "insert into reg(name,phone,email,branch,course,amount,address,city,country,zip,category)values(?,?,?,?,?,?,?,?,?,?,?)";
	   PreparedStatement ps = db.prepareStatement(q);
	   ps.setString(1,name);
	   ps.setString(2,phone);
	   ps.setString(3,email);
	   ps.setString(4,branch);
	   ps.setString(5,course);
	   ps.setInt(6,amount);
	   ps.setString(7,address);
	   ps.setString(8,city);
	   ps.setString(9,country);
	   ps.setInt(10,z);
	   ps.setString(11,category);
	   
	   i=ps.executeUpdate();
	   
	   if(i>0){
		   out.print("Registration Successful :)");
		   response.sendRedirect("Online_Reg.jsp?msg=valid");
	   }
	
	
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>