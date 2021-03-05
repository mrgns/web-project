<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DTH</title>
<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
	 <link rel="stylesheet" type="text/css" href="form.css"/>
</head>
<body>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
</header>
<%int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));%>
<center><h1>Tv/Cable Recharge</h1></center>

<div class="form-group" align="center" style="margin-top:2%;">
  <form name="frm" method="post" action="DthPayment2.jsp" class="form-container">

	<input type=hidden name="walletid" value="<%=walletid %>" >
	
	<label for="Company Name" id='form1example2'><b>Company Name</b></label>
    <select name="comnm" class='form-control'>
    <option value="Tata Sky">Tata Sky</option>
    <option value="DishTv">DishTv</option>
    <option value="Videocon">Videocon</option>
    </select>
	
	<label for="customer no" id='form1example2'><b>Customer Id</b></label>
    <input type="text" name="cusid" class='form-control' placeholder="Customer No" required>
	
    <label for="Mobile No" id='form1example2'><b>Mobile No</b></label>
    <input type="text" name="mobile" class='form-control' placeholder="mobile" required> 
    
    <label for="Plan" id='form1example2'><b>Plan</b></label>
    <input type="text" name="plan" class='form-control' placeholder="Amount">
    

    <button type="submit" class='btn btn-block'>Recharge</button>
    <button type="reset" class='btn btn-primary btn-block'>Cancle</button>
  </form>
</body>
</html>