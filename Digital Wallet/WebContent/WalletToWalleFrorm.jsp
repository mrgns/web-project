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
<%
int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
%>
<div class="form-group" align="center" style="margin-top:5%;">
  <form name="frm" method="post" action="WalletToWallet.jsp" class="form-container">

    <input type=hidden name="walletid" value="<%=walletid %>" >

    <label for="Wallet" id='form1example2'><b>Wallet ID</b></label>
    <input type="number" name="walletid1" class='form-control' placeholder="Wallet Id" required>
    
    <label for="Wallet" id='form1example2'><b>Amount</b></label>
    <input type="text" name="amount" class='form-control' placeholder="Amount">
    
    <button type="submit" class='btn btn-primary btn-block'>Send Money</button>
    <button type="reset" class='btn btn-primary btn-block'>Cancle</button>
  </form>
</div>
</body>
</html>