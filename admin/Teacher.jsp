<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Form</title>
<link rel="icon" href="../img/favicon.png" type="image/png" />
<%@include file="AdminNav.jsp" %>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div class="container py-4">
        <div class="card shadow">
            <div class="card-header bg-primary text-center">
                <h4 class="text-light"><marquee behavior="alternate" direction="left" scrollamount="15">Teacher_Form</marquee></h4>
            </div>
            <div class="card-body">
                <form action="#" method="">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Teacher Name:">
                        </div>
                        <div class="col-md-6">
                            <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter Phone Number:">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email Address:">
                        </div>
                        <div class="col-md-6">
                           <input type="text" class="form-control" id="skill" name="skill" placeholder="Enter Skills:">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                                <input type="text" class="form-control" id="experience" name="exprrience" placeholder="Enter Experience:">
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="exemployee" name="exemployee" placeholder="Enter Exemployee:">
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
                            <input type="text" class="form-control" id="zip" name="zip" placeholder="Enter ZIP Code:">
                        </div>
                         <div class="col-md-6">
                            <input type="number" class="form-control" id="total" name="total" placeholder="Total Experience:">
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