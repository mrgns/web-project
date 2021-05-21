<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="Design.css"/>
<style>
.returnTag{margin-left:20px; border:1px inset black; background-color:seashell; border-radius:5px; height:30px; width:100px; text-align:center;}
a:hover{font-size:18px; color:black;}
input[type=text],select {
	height:40px;
	width:300px;
	background-color:lightblue;
  border: 2px solid blue;
  border-radius: 4px;
}
.label{ text-size:20px;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img src="images/job3.png">
<hr>
<header style='display:inline;'>

<span width='500px' height='300px'>
<i class="bi bi-search"></i><h1><b>Technology Jobs portal</b></h1>
</span>
</header>

<marquee class="marquee"> 200+ Jobs, Recruitment, Staffing, and Hiring | Show your talent, grab a Job 
|Recruitment staffing engine | Trust Us! We will build your success</marquee>
<br>
<div class="returnTag" align="center">
<a href="Admin.jsp">Back</a>
</div>
<br>
<center>
<h3><i><u>Add New Job Based On Skills</u></i></h3>
<form name="frm" method="post" action="AddJob1.jsp">
  
  <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Title</label>
      <input type="text" name="Title" id="form1example2" class='form-control' placeholder="Title"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Company</label>
      <input type="text" name="Company" id="form1example2" class='form-control' placeholder="Company"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Location</label>
      <input type="text" name="Location" id="form1example2" class='form-control' placeholder="Location"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Type</label>
      <input type="text" name="Type" id="form1example2" class='form-control' placeholder="Type"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Level</label>
      <input type="text" name="Level" id="form1example2" class='form-control' placeholder="Level"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>YearsExp</label>
      <input type="text" name="YearsExp" id="form1example2" class='form-control' placeholder="YearsExp"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Country</label>
      <input type="text" name="Country" id="form1example2" class='form-control' placeholder="Country"/>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label  id='form1example2'>Skills</label>
      <input type="text" name="Skills" id="form1example2" class='form-control' placeholder="Skills"/>
    </div>
    </div>
    <br>
    <div class="container">
    <input type="Submit" value="Add Job" class="btn btn-primary btn-block">
    </div>
    </form>
<center>
<br>
<footer>
<div  align="right">
<hr>
<center>
&copy; Technology Jobs Portal.
All Right Reserved | Contact <i>themrgns@outlook.com</i>
</center></div>
</footer>
</body>
</html>