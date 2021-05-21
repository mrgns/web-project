<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="Design.css"/>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>
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
| Recruitment staffing engine | Trust Us! We will build your success</marquee>
<br>
<center>
<h2><i>Create New Password</i></h2>
<form name="frm" method="post" action="ChangePassword2.jsp">
  	<div class="container">
    <div class="form-group">
      <label for='username' id='form1example2'>Userid</label>
      <input type="text" name="userid" id="form1example2" class='form-control' placeholder="username"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    </div>
    <div class="container">
    <div class="form-group">
      <label for='username' id='form1example2'>Username</label>
      <input type="text" name="usnm" id="form1example2" class='form-control' placeholder="username"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    </div>
    <div class="container">
    <div class='form-group'>
      <label for='Password' >New Password</label>
      <input type="password" name="pswd" id="pswd" class='form-control' placeholder="password">
    </div>
    </div>
    <input type="submit" value="Submit" class='btn btn-primary btn-block' />
    <input type="reset" value="Cancle" class='btn btn-primary btn-block' />
</form>
</center>
</body>
</html>