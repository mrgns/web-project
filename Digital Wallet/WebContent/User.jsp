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

<title>user</title>
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
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>

<div class="Profile" align="right" width=150px height=150px>
	<img src="Profile.jsp?walletid='<%=walletid %>'" width=100px height=100px/>
	</div>
	<div class="ShowId" align="right"><h3> Id : <%=walletid %></h3></div>
</header><br>

 <div align="right"><jsp:include page="BalanceCheckPopUp.jsp"></jsp:include></div>

<div>
<jsp:include page="Process.jsp"></jsp:include>
</div>

<jsp:include page="footer.jsp"></jsp:include><br>

    
    
    <div class="container" align="right" style="margin-bottom:10%;">
    <a href="TransactionReport.jsp" class="btn btn-secondary ">Transaction History</a>
    </div>
    <div class="container" align="left" style="margin-top:10%;">
  <a href="logout.jsp" class="btn btn-secondary float-left">Log Out</a>
    </div>
    <jsp:include page="footer.jsp"></jsp:include><br>
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