<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
<meta charset="ISO-8859-1">
<title>Digital Wallet Homepage</title>
</head>


<body >
<header style='display:inline;'>

<div class='list' align="right" width=500px>
<td><a href='index.jsp'>Login</a></td>
<td><a href='About.jsp'>About Us</a></td>
<td><a href='Registration.jsp'>Register</a></td>
<td><a href='Contact.html'>Contacts</a></td>
</div>

<div width='500px' height='300px'>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
</header>



<div id='loginIn' class='container'>
<div id='profileimage' align="center">
<img src='Images/Profile.png' alt='Profile' width='200' height='200'>
</div>

  <form method="post" action='Userlogin' name='frm'>
  
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
    <div class='row'>
    <a href="ChangePassword.jsp">  Forget Password?</a>
    </div>
    <button type="submit" class='btn btn-primary btn-block'>SIGN IN</button>
    
    <p align='center'>or sign up with:</p>
	<center>    
    <button type="button" class="btn btn-primary btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-primary btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-primary btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button type="button" class="btn btn-primary btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
    </center>
    <br>
  </form>
</div>

<footer>
<div id='footer1' style="color:green;">
<td><a href='#####'>About Us</a></td>
<td><a href='#####'>Privacy Policy</a></td>
<td><a href='#####'>Terms Of Use</a></td>
</div>
<div id='footer2' align="right">
&copy; e-Wallet.
All Right Reserved | Design by Mrgns
</div>
</footer>
</body>
</html>