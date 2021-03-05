<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="beans.MSEDC" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
</header>
<center><h2>Electricity bill payment<i class="fab fa-google-wallet fa-1x"></i><small>e-Wallet</small> </h2></center>
<%
String cusnm,issue_date;
String cusno,walletid,accno;
double amt;

cusno=request.getParameter("cusno");
accno=request.getParameter("accno");
cusnm=request.getParameter("cusnm");
issue_date=request.getParameter("date");
walletid=request.getParameter("walletid");
amt=Double.parseDouble(request.getParameter("amount"));

MSEDC ms=new MSEDC();
ms.setCusno(cusno);
ms.setAccno(accno);
ms.setIssue_date(issue_date);
ms.setCusnm(cusnm);
ms.setWalletid(walletid);
ms.setAmt(amt);

String stat=ms.payBill();
if(stat.equals("Success"))
{
%>
	<script type="text/javascript">
            alert("Status :"+stat); 
        </script>
 <h2 style="color:green; margin-top:20%; margin-left:5%;">Status : <%=stat %></h2>
 <%	
 session.invalidate();
}
else
{
%>
<h2 style="color:red; margin-top:20%; margin-left:5%;">Status : <%=stat %></h2>
<%
}
%>
<footer>
<a href="user.jsp" class="btn btn-primary">Back</a>
</footer>
</body>
</html>