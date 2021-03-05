<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="beans.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
    
<meta charset="ISO-8859-1">
<title>Activate/Deactivate</title>
</head>
<body>
<header>
  <div width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small><br>
<p>Make your life easy :)</p>
</div></header>
<%

String usernm,walletid,status;
  usernm=request.getParameter("usernm");
  walletid=request.getParameter("userid");
  status=request.getParameter("status");
  
  
  Connection con;
  PreparedStatement pst;
  ResultSet rs;
  try
  {
  	
  	DBConnection dbc=new DBConnection();
  	con=dbc.getDbconnection();

  	pst=con.prepareStatement("update users set userstatus=? where walletid=? and usernm=?;");
  	pst.setString(1, status);
  	pst.setString(2, walletid);
  	pst.setString(3, usernm);
  	int res=pst.executeUpdate();
  	if(res>0)
  	{
  	%>
  		<script type="text/javascript">
  	            alert("Status :"+stat); 
  	        </script>
  	 <h2 style="color:green; margin-top:20%; margin-left:5%;">Status : Success</h2>
  	 <%	
  	}
  	else
  	{
  	%>
  	<h2 style="color:red; margin-top:20%; margin-left:5%;">Status : Failed</h2>
  	<%
  	}
  }
  catch(Exception ex)
  {
  	System.out.println(ex.getMessage());
  }
  	%>
  	<div class="container" Style="margin-bottom:10px;">
  	<a href="Admin.jsp" class="btn btn-primary">Back</a>
  	</div>
</body>
</html>