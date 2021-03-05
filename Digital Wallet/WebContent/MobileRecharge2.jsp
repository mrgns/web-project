<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="beans.MobileRecharge3" %>
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
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<%
String id,mob,company;
double amt;
id=request.getParameter("walletid");
mob=request.getParameter("mobile");
company=request.getParameter("comnm");
amt=Double.parseDouble(request.getParameter("plan"));

MobileRecharge3 mr=new MobileRecharge3();
mr.setId(id);
mr.setMob(mob);
mr.setCompany(company);
mr.setAmt(amt);

String status=mr.payment();
if(status.equals("Success"))
{
%>
<script type="text/javascript">
var status="Succees";
            alert("Status :"+status); 
        </script>
<h2 style="color:green; margin-top:20%; margin-left:5%;">Status : <%=status %></h2>
<%
session.invalidate();
}
else
{
%>
<script type="text/javascript">
            alert("Status :"+status); 
        </script>
<h2 style="color:red; margin-top:20%; margin-left:5%;">Status : <%=status %></h2>
<%
}
%>
<footer>
<a href="user.jsp" class="btn btn-primary">Back</a>
</footer>
</body>
</html>