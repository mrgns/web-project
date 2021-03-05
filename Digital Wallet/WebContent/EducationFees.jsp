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
<title>Insert title here</title>
</head>
<body>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<center><h1>Educational Institude Fees</h1></center>
<%
int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
String usernm=String.valueOf(session.getAttribute("usernm"));
%>
	<div class="form-group" align="center" style="margin-top:2%; color:white;">
  <form name="frm" method="post" action="EducationFees2.jsp" class="container">
	<input type=hidden name="walletid" value="<%=walletid %>" >
	
	<label for="Institude Name" id='form1example2'><b>Student Name</b></label>
     <input type="text" name="inm" class='form-control' placeholder="Student Name">
	
	<label for="Institude Name" id='form1example2'><b>Student Id</b></label>
     <input type="text" name="inm" class='form-control' placeholder="Student Id">
	
    <label for="Mobile No" id='form1example2'><b>Mobile No</b></label>
    <input type="text" name="mobile" class='form-control' placeholder="Mobile No">

	<label for="Institude Name" id='form1example2'><b>Institude Name</b></label>
     <input type="text" name="inm" class='form-control' placeholder="Institude Name">
     
     <label for="Account" id='form1example2'><b>Account No</b></label>
     <input type="text" name="accno" class='form-control' placeholder="Account No">
    
    <label for="Plan" id='form1example2'><b>Fees*</b></label>
    <input type="text" name="amount" class='form-control' placeholder="Amount" required><br>
    

    <button type="submit" class='btn btn-primary btn-block' style="background-color:lightblue;">Fees Pay</button>
    <button type="reset" class='btn btn-primary btn-block' style="background-color:red;">Cancle</button>
  </form>
  </div>

</body>
</html>