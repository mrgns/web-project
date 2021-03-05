<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="beans.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
<meta charset="ISO-8859-1">
<title>Education Fees</title>
</head>
<body>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<%
String id,accno;
double amt;
id=request.getParameter("walletid");
accno=request.getParameter("accno");
amt=Double.parseDouble(request.getParameter("amount"));
String status="";

Connection con;
PreparedStatement pst;
ResultSet rs,result;
try
{
	DBConnection dbc=new DBConnection();
	con=dbc.getDbconnection();
// 	pst=con.prepareStatement("select * from Institude where insti_nm=?;");
// 	pst.setString(1, name);
// 	rs=pst.executeQuery();
// 	while(rs.next())
// 	{
// 	String accno=rs.getString("accno");

	pst=con.prepareStatement("update wallet set balance=balance-? where walletid=?");
	pst.setDouble(1, amt);
	pst.setString(2, id);
	int res=pst.executeUpdate();
	
	if(amt>1000)
	{
		double cashback=50;
		pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?");
		pst.setDouble(1, cashback);
		pst.setString(2, id);
		int cat=pst.executeUpdate();
	
	}
	
	pst=con.prepareStatement("select * from wallet where walletid=?");
	pst.setString(1, id);
	result=pst.executeQuery();
	if(result.next())
	{
		double amount=Double.parseDouble(result.getString("balance"));
		pst=con.prepareStatement("insert into transaction values(?,?,now(),'Withdrawal',?,?)");
		pst.setString(1, id);
		pst.setString(2, result.getString("name"));
		pst.setDouble(3, amt);
		pst.setDouble(4, amount);
		int trans=pst.executeUpdate();
	if(trans>0)
	{
		res=0;
		pst=con.prepareStatement("update accounts set balance=balance+? where accno=?");
		pst.setDouble(1, amt);
		pst.setString(2, accno);
		res=pst.executeUpdate();
		
		if(res>0)
			status="Success";
		else
			status="failed";
	}
	else
		status="failed";
	}
}
catch(Exception e)
{
	status=e.getMessage();
}
if(status.equals("Success"))
{
%>
<script type="text/javascript">
var status="Fees Paid";
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
var status="Fees failed";
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