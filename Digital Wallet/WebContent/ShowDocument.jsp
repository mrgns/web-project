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
<title>Insert title here</title>
</head>
<body>
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

<div class="container" style="margin-top:15%;">

<form method="post" action="ShowDocument2.jsp" name='frm'>
  
    <div class="form-group">
      <label for='username' id='form1example2'>UserId/WalletId</label>
      <input type="text" name="userid" id="form1example2" class='form-control' placeholder="userid"/>
      <small id='usernm' class=form-text text-muted'></small>
    </div>
 
    <button type="submit" class='btn btn-primary btn-block'>Show Document</button>
    </form>
</div>

<div id="ShowDocument"> </div>
</body>
</html>