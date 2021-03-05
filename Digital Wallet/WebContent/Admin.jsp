<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
<title>Admin</title>
</head>
<body>
<%
if(session.getAttribute("walletid")!=null)
{
	int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
	String usernm=String.valueOf(session.getAttribute("usernm"));
	HttpSession sec=request.getSession(true);
	%>
	
<header>
<div align="left"><jsp:include page="BalanceCheckPopUp.jsp"></jsp:include></div>
  <div width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small><br>
<p>Make your life easy :)</p>
</div>
<div class="Profile image" align="right" width=500px height=400px>
	<img src="Profile.jsp?id="walletid" />
	</div>
	<div class="ShowId" align="right"><h3>Wallet Id : <%=walletid %></h3></div>
	<div><jsp:include page="AdminProcess1.jsp"></jsp:include></div>
</header>
<div class="container">
<jsp:include page="AdminProcess.jsp"></jsp:include>
</div>
<footer>
<div class="container" align="left" style="margin-top:0.5%;">
  <a href="logout.jsp" class="btn btn-secondary float-left">Log Out</a>
    </div>
<div id='footer1'>
<td><a href='#####'>About Us</a></td>
<td><a href='#####'>Privacy Policy</a></td>
<td><a href='#####'>Terms Of Use</a></td>
</div>
<div id='footer2' align="right" st>
&copy; e-Wallet.
All Right Reserved | Design by Mrgns
</div>
<%  
 }
 else
 {
	%>
 	<h3 style="color:red">Invalid Session</h3>
 	<a href="index.jsp">Login Now</a>
 	<%
 	}
 	%>
</body>
</html>