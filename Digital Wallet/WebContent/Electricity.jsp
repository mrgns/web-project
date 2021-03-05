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
<title>Insert title here</title>
</head>
<body>
<header>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<center><b><h1>MSEDC Mahavitaran</h1></b></center>
<center><h2>Electricity bill payment <i class="fab fa-google-wallet fa-1x"></i><small>e-Wallet</small> </h2></center>
<%
int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));

%>
<div class="form-group" align="center" style="margin-top:10%;">
  <form name="frm" method="post" action="Electricity2.jsp" class="form-container">

	<input type=hidden name="walletid" value="<%=walletid %>" >
	
	<input type=hidden name="accno" value=50000102>
	
    <label for="Customer No" id='form1example2'><b>Customer No</b></label>
    <input type="number" name="cusno" class='form-control' placeholder="Customer No" required>

	<label for="Customer Name" id='form1example2'><b>Name</b></label>
    <input type="text" name="cusnm" class='form-control' placeholder="Customer Name" required>    
    
    <label for="Customer Name" id='form1example2'><b>Issue Date</b></label>
    <input type="text" name="date" class='form-control' placeholder="yyyy/mm/dd">
    
    <label for="Account" id='form1example2'><b>Amount</b></label>
    <input type="text" name="amount" class='form-control' placeholder="Amount">
 
    
    <button type="submit" class='btn btn-block'>Pay</button>
    <button type="reset" class='btn btn-primary btn-block'>Cancle</button>
  </form>
  </div>
</body>
</html>