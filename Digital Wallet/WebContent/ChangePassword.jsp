<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
	<link rel="stylesheet" type="text/css" href="form.css"/>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<header>
  <div width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small><br>
<p>Make your life easy :)</p>
</div></header>
<div class="container" style="margin-top:15%;">

<form method="post" action="ChangePassword2.jsp" name='frm'>
  
    <div class="form-group">
      <label for='username' id='form1example2'>Username</label>
      <input type="text" name="usernm" id="form1example2" class='form-control' placeholder="username"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    
    <div class="form-group">
      <label for='username' id='form1example2'>UserId/WalletId</label>
      <input type="text" name="userid" id="form1example2" class='form-control' placeholder="userid"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
    
    <div class='form-group'>
      <label for='Password' >Password</label>
      <input type="Password" name="pswd" id="form1example2" class='form-control' placeholder="Password"/>
    </div>
    
    <div class='form-group'>
      <label for='Password' >Conform Password</label>
      <input type="password" name="pswd1" id="form1example2" class='form-control' placeholder="Conform Password"/>
    </div>
    <button type="submit" class='btn btn-primary btn-block'>Change</button>
    </form>
</div>

</body>
</html>