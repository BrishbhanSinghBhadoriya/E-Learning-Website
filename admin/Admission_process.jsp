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
String total = request.getParameter("total_fee");
int total_fee=Integer.parseInt(total);
int rem = total_fee-amount;
String address= request.getParameter("address");
String password= request.getParameter("password");
String city= request.getParameter("city");
String country= request.getParameter("country");
String zip= request.getParameter("zip");
int z=Integer.parseInt(zip);
String category= request.getParameter("category");
int i=0;
try{
	   Connection db = Conn.getCon();
	   String q = "insert into admission(name,phone,email,branch,course,amount,total,rem,address,password,city,country,zip,category)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	   PreparedStatement ps = db.prepareStatement(q);
	   ps.setString(1,name);
	   ps.setString(2,phone);
	   ps.setString(3,email);
	   ps.setString(4,branch);
	   ps.setString(5,course);
	   ps.setInt(6,amount);
	   ps.setInt(7,total_fee);
	   ps.setInt(8,rem);
	   ps.setString(9,address);
	   ps.setString(10,password);
	   ps.setString(11,city);
	   ps.setString(12,country);
	   ps.setInt(13,z);
	   ps.setString(14,category);
	   
	   i=ps.executeUpdate();
	   
	   if(i>0){
		   
		   response.sendRedirect("Admission_list.jsp");
	   }
	   else{
		   response.sendRedirect("Admission.jsp"); 
	   }
	
	
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>