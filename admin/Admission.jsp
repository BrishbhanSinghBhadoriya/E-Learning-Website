<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission | Form</title>
<link rel="icon" href="img/favicon.png" type="image/png"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="AdminNav.jsp" %>
</head>
<body>





 <div class="container py-5">
 <%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	
	<h2 class="text-center"><b>Registration Successful</b></h2>
	
	
	<%
}

%>
        <div class="card shadow">
            <div class="card-header bg-primary text-center">
                <h4 class="text-light"><marquee behavior="alternate" direction="left" scrollamount="15">Admission Form</marquee></h4>
            </div>
            <div class="card-body">
                <form action="Admission_process.jsp" method="post">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name:">
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone Number:">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email Address:">
                        </div>
                        <div class="col-md-6">
                            <select id="branch" name="branch" class="form-select form-control">
                                <option value="">Select Branch:</option>
                                <option value="IT">IT</option>
                                <option value="CS">CS</option>
                                <option value="ECE">ECE</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">
                                <select id="course" name="course" class="form-select form-control" placeholder="Select Course">
                                <option value="">Select From Available Courses:</option>
                                <option value="python">Python</option>
                                <option value="java">Java</option>
                                <option value="web-development">Web Development</option>
                                <option value="mern fullstack">Mern Fullstack</option>
                                <option value="mean fullstack">Mean Fullstack</option>
                            </select>
                        </div>
                        </div>
                        <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="number" class="form-control" id="amount" name="amount" placeholder="Enter Amount:">
                        </div>
                        
                         <div class="col-md-6">
                            <input type="number" class="form-control" id="total_fee" name="total_fee" placeholder="Enter Total Amount:">
                        </div>
                    </div>
                    <div class="row mb-3" >
                    
                    <div class="col-md-6">
                        <textarea id="address" name="address" class="form-control"  placeholder="Enter Address:"></textarea>
                    </div>
                    <div class="col-md-6">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password:">
                        </div>
                    
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="city" name="city" placeholder="Enter City Name:">
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="country" name="country" placeholder="Enter Country Name:">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="number" class="form-control" id="zip" name="zip" placeholder="Enter ZIP Code:">
                        </div>
                         <div class="col-md-6">
                            <select id="category" name="category" class="form-select form-control">
                                <option value="">Select Category:</option>
                                <option value="general">General</option>
                                <option value="obc">OBC</option>
                                <option value="sc">SC</option>
                                <option value="st">ST</option>
                            </select>
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success w-100 ">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


</body>
</html>