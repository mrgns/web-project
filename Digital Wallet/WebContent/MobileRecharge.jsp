<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
	<link rel="stylesheet" type="text/css" href="form.css"/>
<meta charset="ISO-8859-1">
<title>Recharge</title>
</head>
<body>
<header>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<center><h1>Mobile Recharge</h1></center>
<%
int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
String usernm=String.valueOf(session.getAttribute("usernm"));
%>
<div class="form-group" align="center" style="margin-top:10%;">
  <form name="frm" method="post" action="MobileRecharge2.jsp" class="form-container">

	<input type=hidden name="walletid" value="<%=walletid %>" >
	
    <label for="Mobile No" id='form1example2'><b>Mobile No</b></label>
    <input type="text" name="mobile" class='form-control' placeholder="Customer No" required>

	<label for="Company Name" id='form1example2'><b>Company Name</b></label>
    <select name="comnm" class='form-control'>
    <option value="IDEA">IDEA</option>
    <option value="JIO">JIO</option>
    <option value="ARTEL">ARTEL</option>
    </select>  
    
    <label for="Plan" id='form1example2'><b>Plan</b></label>
    <input type="text" name="plan" class='form-control' placeholder="Amount">
    

    <button type="submit" class='btn btn-block'>Recharge</button>
    <button type="reset" class='btn btn-primary btn-block'>Cancle</button>
  </form>
  </div>

</body>
</html>