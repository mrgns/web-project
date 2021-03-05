<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
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
<title>Transaction Report</title>
</head>
<body>
<header>
<%
if(session.getAttribute("walletid")!=null)
{
	int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
%>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
</header>
<center><h3 style="margin-top:7%;">Wallet Transaction History </h3></center>
<table class="table table-striped" style="margin-top:5%;">
            <thead>
              <tr>
                <th scope="col">Trans Date</th>
                <th scope="col">Trans Type</th>
                <th scope="col">Amount</th>
                <th scope="col">Total Rs. </th>
              </tr>
            </thead>
            <tbody>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	
	DBConnection dbc=new DBConnection();
	con=dbc.getDbconnection();

	pst=con.prepareStatement("select * from transaction where walletid=?;");
	pst.setInt(1, walletid);
	rs=pst.executeQuery(); 
	
	while(rs.next())
	{
 %>
            
              <tr>
                <td scope="row"><%=rs.getString("trans_date") %></td>
                <td scope="row"><%=rs.getString("trans_type") %></td>
                <td scope="row" style="color:lightblue;"><%=rs.getString("amount") %></td>
                <td scope="row" style="color:lightgreen;"><%=rs.getString("total") %></td>
              </tr>
              
          <%  
 }
}
catch(Exception ex)
{
	System.out.println(ex.getMessage());
}
%>
 </tbody>
          </table>
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