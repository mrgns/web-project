<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="beans.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
	String usernm=String.valueOf(session.getAttribute("usernm"));

	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	try
	{
		DBConnection dbc=new DBConnection();
		con=dbc.getDbconnection();
		pst=con.prepareStatement("select balance from wallet where walletid=?;");
		pst.setInt(1,walletid);
		rs=pst.executeQuery();
		while(rs.next())
		{
		%>
		<div class="container">
		<b><h4 align="right" style="color:white">
		Balance :<%=rs.getInt("balance") %>
		</h4></b>
		</div>
		<%	
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
		
</div>
</body>
