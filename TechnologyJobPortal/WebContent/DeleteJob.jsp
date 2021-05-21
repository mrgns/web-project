<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="Design.css"/>
<style>
.returnTag{border:2px inset black; background-color:lightgreen; border-radius:5px; height:30px; width:100px; text-align:center;}

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
<div class="navigation-bar" align="right">


<center>
<h3><i><u>Delete Job from database</u></i></h3>
<form name="frm" method="post" action="delete.jsp">
  
  <div class="container">
    <div class="form-group">
      <label for='username' id='form1example2'>Job Serial No</label>
      <input type="text" name="seno" id="form1example2" class='form-control' placeholder="job serial no"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    <br>
    </div>
    <div class="container">
    <input type="Submit" value="Delete" class="btn btn-primary btn-block">
    </div>
    </form>
    <br>
    
    <h3><i><u>Modify Job Information</u></i></h3>
    
    <form name="frm" method="post" action="modify.jsp">
  <div class="container">
    <div class="form-group">
      <label for='username' id='form1example2'>Job Serial No</label>
      <input type="text" name="seno" id="form1example2" class='form-control' placeholder="job serial no"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    
    
    <div class="container">
  <label for='username' id='form1example2'>Name</label>
  <br>
    <select name="key">
    <option value="Title">Title</option>
    <option value="Company">Company</option>
    <option value="Location">Location</option>
    <option value="Type">Type</option>
    <option value="Level">Level</option>
    <option value="YearsExp">YearsExp</option>
    <option value="Country">Country</option>
    <option value="Skills">Skills</option>
    </select>
    </div>
  
  <div class="container">
    <div class="form-group">
    <label for='username' id='form1example2'>Value</label>
      <input type="text" name="value" id="form1example2" class='form-control' placeholder="value"/>
      <small id='value' class=form-text text-muted'></small>
    </div>
    </div>
    <br>
    <div class="container">
    <input type="Submit" value="Modify" class="btn btn-primary btn-block">
    </div>
    </form>
    <br>
    </center>
    
    <div class="returnTag">
<a href="Admin.jsp">Back</a>
</div>
</body>
</html>