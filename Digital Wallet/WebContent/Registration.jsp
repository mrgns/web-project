<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="bootstrap.min.css"/>
	<link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Registration.css"/>
<title>registration</title>
</head>
<body>

<header >
<div id='logout' align="right"><i class="fad fa-sign-out"></i></div>
<div width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
<div align="right"><a href="index.jsp"><img src="https://img.icons8.com/flat-round/64/000000/back--v1.png"/></a></div>
</header>

<div>
<form class="signup-form" action="DataForm" method="post" enctype="multipart/form-data">
    <div class="form-header">
    <h1>Create Account</h1>
	</div>
    <div class="form-body">
    <!-- Firstname and Lastname -->
    <div class="horizontal-group">
        <div class="form-group left">
            <label for="firstname" class="label-title">First name *</label>
            <input type="text" name="Fname" id="firstname" class="form-input" placeholder="Name Sirname" required="required" />
        </div>
        <div class="form-group right">
            <label for="lastname" class="label-title">Last name</label>
            <input type="text" name="Lname" id="lastname" class="form-input" placeholder="Middle Name" />
        </div>
    </div>
    <div class="form-group">
    <label for="email" class="label-title">Email*</label>
    <input type="email" name="email" id="email" class="form-input" placeholder="enter your email" required="required" />
</div>
<!-- Passwrod and confirm password -->
<div class="horizontal-group">
    <div class="form-group left">
        <label for="password" class="label-title">Password *</label>
        <input type="password" name="pass" id="password" class="form-input" placeholder="enter your password" required="required" />
    </div>
    <div class="form-group right">
        <label for="confirm-password" class="label-title">Confirm Password *</label>
        <input type="password" name="Cpass" class="form-input" id="confirm-password" placeholder="enter your password again" required="required" />
    </div>
</div>

<!-- Gender -->
<div class="horizontal-group">
    <div class="form-group left">
        <label class="label-title">Gender:</label>
        <div class="input-group">
            <label for="male"> <input type="radio" name="gender" value="male" id="male" /> Male</label>
            <label for="female"> <input type="radio" name="gender" value="female" id="female" /> Female</label>
        </div>
    </div>
    
</div>

	<!-- Profile picture and Age -->
<div class="horizontal-group">
    <div class="form-group right">
        <label for="choose-file" name="image" class="label-title">Upload Profile Picture</label>
        <input type="file" id="file" name="Profile" aria-label="File browser example">
 			 <span class="file-custom"></span>
    </div><br>
    
    <div class="horizontal-group">
    <div class="form-group">
       <label for="choose-file" name="image" class="label-title">Upload KYC Document</label>
		<input type="file" id="file" name="file" aria-label="File browser example">
 			 <span class="file-custom"></span>
    </div>
<div class="form-group right">
        <label for="experience" class="label-title">Age</label>
        <input type="number" name='age' min="18" max="80" value="18" class="form-input" />
    </div>
</div>

<!-- Bio -->
<div class="form-group">
    <label for="choose-file" class="label-title">Bio</label>
    <textarea class="form-input" name='bio' rows="4" cols="50" style="height: auto;"></textarea>
</div>

</div>

	<div class="form-footer">
    <span>* required</span>
    <button type="submit" class="btn">Create</button>
</div>

</div>

<footer>
<div id='footer1'>
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

<script>
      var rangeLabel = document.getElementById("range-label");
      var experience = document.getElementById("experience");
      function change() {
      rangeLabel.innerText = experience.value + "K";
      }
    </script>
</html>