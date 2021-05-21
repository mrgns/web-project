<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	 <link rel="stylesheet" type="text/css" href="Design.css"/>
<meta charset="ISO-8859-1">
<title>JOBS Portal Homepage</title>
</head>
<body>
<img src="images/job3.png">
<hr>
<header style='display:inline;'>

<div width='500px' height='300px'>
<i class="bi bi-search"></i><h1><b>Technology Jobs portal</b></h1>
</div>
</header>
<div class="navigation-bar" align="right">
<ul>
<li><a href="index.jsp">Home</a></li>
<li><a href='index.jsp'>Login</a></li>
<li><a href='Registration.jsp'>Register</a></li>
<li><a href='Company.jsp'>Company</a></li>
<li><a href='Contact.jsp'>Contacts</a></li>
</ul>
</div>
<center>
<div id='loginIn' class='container'>
<div id='profileimage' align="center">
<img src='images/Profile.png' alt='Profile' width='200' height='200'>
</div>

  <form name="frm" method="post" action="Check">
  
    <div class="form-group">
      <label for='username' id='form1example2'>Username</label>
      <input type="text" name="usnm" id="form1example2" class='form-control' placeholder="username"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    
    <div class='form-group'>
      <label for='Password' >Password</label>
      <input type="password" name="pswd" id="pswd" class='form-control' placeholder="password">
      
    </div>
    <div class='row mb-4'>
      <div class='col d-flex justify-content-center'>
    	<div class='form-check'>
      	  <input type="checkbox" class='form-check-input' id="form1example3" checked>
          <label class='form-check-label' for='form1example3'>Remember Me</label>
    	</div>
       </div>
    </div> 
    <input type="submit" value="Sign In" class='btn btn-primary btn-block' />
<div class='row'>
    <a href="ChangePassword.jsp">  Forget Password?</a>
    </div>

</form>
</div><br><br>
<h7>if you are new then <i>Register</i></h7>
</center>

<footer>
<div  align="right">
<hr>
<center>
&copy; Technology Jobs Portal.
All Right Reserved | Design by Ganesh N. Shinde
</center></div>
</footer>
</body>
</html>