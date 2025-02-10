<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Form</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<%@include file="NavBar.jsp" %>
</head>
<body><br><br><br>
<div class="container py-5" style="">
<div class="row offset-4">
<div class="col-12">
<div class="card w-50">
<div class="card-body">
<h5 class="card-title text-center">Admin_Login</h5>
<div class="card-body">
<form action="LoginAction.jsp" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email.."
    name="email">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password.."
    name="pass">
  </div>
  <button type="submit" class="btn btn-primary w-100 sm">Admin Login</button>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>