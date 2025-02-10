<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Form</title>
<link rel="icon" href="../img/favicon.png" type="image/png" />
<%@include file="AdminNav.jsp" %>
</head>
<body>
<div class="container py-2">
<div class="row offset-3">
<div class="col-8">
<div class="card shadow w-100">
<div class="card-body">
<h2 class="card-title text-center text-info">Add_Courses</h2>
<div class="card-body">
<form action="CourseData.jsp">

<div class="mb-3">
<label for="course" class="form-label">Course Name</label>
<select class="form-control" name="course">
<option value="java fullstack">Java Fullstack </option>
<option value="java expert">Java Expert </option>
<option value="core java">Core Java </option>
<option value="mern stack">MERN Stack </option>
<option value="mean stack">MEAN Stack </option>
<option value="python">Python </option>
<option value="android">Android</option>
<option value="php">PHP </option>
<option value="c#">C# </option>
</select>
</div>

<div class="mb-3">
<label for="description" class="form-label">Description</label>
<textarea rows="2" cols="2" class="form-control" name="description"></textarea>
</div>

<div class="mb-3">
<label for="month" class="form-label">Month</label>
<select class="form-control" name="month">
<option value="2 month">2 Months </option>
<option value="3 month">3 Months </option>
<option value="4 month">4 Months </option>
<option value="6 month">6 Months </option>
<option value="8 month">8 Months </option>
<option value="1 year">1 year </option>
</select>
</div>

<div class="mb-3">
<label for="fees" class="form-label">Fees</label>
<select class="form-control" name="fees">
<option value="10000">10,000</option>
<option value="16000">16,000 </option>
<option value="20000">20,000 </option>
<option value="25000">25,000 </option>
<option value="30000">30,000</option>
<option value="35000">35,000</option>
<option value="40000">40,000 </option>
</select>
</div>

<div class="mb-3">
<label for="project" class="form-label">Project</label>
<select class="form-control" name="project">
<option value="mini project">Mini Project </option>
<option value="major project">Major Project </option>
<option value="medium project">Medium Project </option>
</select>
</div>

<div class="mb-3">
<label for="trainer" class="form-label">Trainer</label>
<select class="form-control" name="trainer">
<option value="deepak sir">Deepak Sir </option>
<option value="sachin sir">Sachin Sir </option>
<option value="rahul sir">Rahul Sir </option>
<option value="aashi mam">Aashi Mam </option>

</select>
</div>

<div class="mb-3">
<button class="btn btn-success btn-sm w-100">Add</button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>