<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Registration</title>
<link rel="icon" href="img/favicon.png" type="image/png"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="NavBar.jsp" %>
</head>
<body><br><br>


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
                <h4 class="text-light"><marquee behavior="alternate" direction="left" scrollamount="15">Online Registration Form</marquee></h4>
            </div>
            <div class="card-body">
                <form action="ActionReg.jsp" method="post">
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
                            <select id="branch" name="branch" class="form-select">
                                <option value="">Select Branch:</option>
                                <option value="IT">IT</option>
                                <option value="CS">CS</option>
                                <option value="ECE">ECE</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                                <select id="course" name="course" class="form-select" placeholder="Select Course">
                                <option value="">Select Course:</option>
                                <option value="python">Python</option>
                                <option value="java">Java</option>
                                <option value="web-development">Web Development</option>
                                <option value="mern fullstack">Mern Fullstack</option>
                                <option value="mean fullstack">Mean Fullstack</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <input type="number" class="form-control" id="amount" name="amount" placeholder="Enter Amount:">
                        </div>
                    </div>
                    <div class="mb-3">
                        <textarea id="address" name="address" class="form-control" rows="3" placeholder="Enter Address:"></textarea>
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
                            <select id="category" name="category" class="form-select">
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
<%@include file="Footer.jsp" %>
</body>
</html>