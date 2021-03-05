<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="beans.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Id</title>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
	<link rel="stylesheet" type="text/css" href="form.css"/>
</head>
<body>
<header>
  <div width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small><br>
<p>Make your life easy :)</p>
</div></header>
<%

String usernm,walletid;
String pswd,pswd1;
  usernm=request.getParameter("usernm");
  walletid=request.getParameter("userid");
  pswd=request.getParameter("pswd");
  
  Connection con;
  PreparedStatement pst;
  ResultSet rs;
  try
  {
	  DBConnection dbc=new DBConnection();
	  	con=dbc.getDbconnection();
	  	
	  	
	  pst=con.prepareStatement("select * from users where usernm=?;");
	  pst.setString(1, usernm);
	  rs=pst.executeQuery();
	if(rs.next())
	 {
	 String pass=rs.getString("pswd");
	  
  	if(pass.equals(pswd))
  	{
  	pst=con.prepareStatement("update users set walletid=? where usernm=? and pswd=?;");
  	pst.setString(1, walletid);
  	pst.setString(2, usernm);
  	pst.setString(3, pswd);
  	int res=pst.executeUpdate();
  	if(res>0)
  	{
  	%>
  		<script type="text/javascript">
  		var stat="Success";
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
  	else
  	{
  		%>
  	  	<h2 style="color:red; margin-top:20%; margin-left:5%;">Status : Password Doesn't match</h2>
  	  	<%
  	}
	 }
  	else
  	{
  	%>
  	<h2 style="color:red; margin-top:20%; margin-left:5%;">Status : Usernm/Password Doesn't match</h2>
  	<%
  	}
  }
  catch(Exception ex)
  {
	  %>
	  	<h2 style="color:red; margin-top:20%; margin-left:5%;"><%=ex.getMessage() %></h2>
	  	<%
  }
  	%>
  	<footer>
  	<a href="Admin.jsp" class="btn btn-primary">Back</a>
  	</footer>
</body>
</html>