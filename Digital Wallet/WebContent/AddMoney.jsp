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
<title>transer from</title>
</head>
<body>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<center><h2>Add money in <i class="fab fa-google-wallet fa-1x"></i><small>e-Wallet</small> </h2></center>
<%
int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));

%>
<div class="form-group" align="center" style="margin-top:10%;">
  <form name="frm" method="post" action="AddToWallet" class="form-container">

    <label for="Account" id='form1example2'><b>Account No</b></label>
    <input type="number" name="accno" class='form-control' placeholder="accno" required>

    <input type=hidden name="walletid" value="<%=walletid %>" >
    
    <label for="Account" id='form1example2'><b>Amount</b></label>
    <input type="text" name="amount" class='form-control' placeholder="Amount">
    
    <button type="submit" class='btn btn-block'>Add Money</button>
    <button type="reset" class='btn btn-primary btn-block'>Cancle</button>
  </form>
</div>
</body>
</html>