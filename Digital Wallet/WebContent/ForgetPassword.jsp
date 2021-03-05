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
<title>Insert title here</title>
</head>
<body>
<%

String usernm,walletid;
String pswd,pswd1;
  usernm=request.getParameter("usernm");
  walletid=request.getParameter("userid");
  pswd=request.getParameter("pswd");
  pswd1=request.getParameter("pswd1");
  
  Connection con;
  PreparedStatement pst;
  ResultSet rs;
  try
  {
  	
  	DBConnection dbc=new DBConnection();
  	con=dbc.getDbconnection();
  	if(pswd.equals(pswd1))
  	{
  	pst=con.prepareStatement("update users set pswd=? where walletid=? and usernm=?;");
  	pst.setString(1, pswd);
  	pst.setString(2, walletid);
  	pst.setString(3, usernm);
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
  catch(Exception ex)
  {
  	System.out.println(ex.getMessage());
  }
  	%>
  	<footer>
  	<a href="index.jsp" class="btn btn-primary">Back</a>
  	</footer>
</body>
</html>