<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Blob"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="beans.*"%>
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
<header style='display:inline;'>

<div class='list' align="right" width=500px>
<td><a href='index.jsp'>Login</a></td>
<td><a href='About.jsp'>About Us</a></td>
<td><a href='Registration.jsp'>Register</a></td>
<td><a href='Contact.html'>Contacts</a></td>
</div>

<div width='500px' height='300px'>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
</header>

<%
int walletid=Integer.parseInt(request.getParameter("userid"));
Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	DBConnection dbc=new DBConnection();
	con=dbc.getDbconnection();
	pst=con.prepareStatement("select * from rgusers where walletid=?;");
	pst.setInt(1, walletid);
	rs=pst.executeQuery();
if(rs.next())
{
	%>
	<div id=ShowDocument" class="container" style="margin-top:20%; margin-left:10%;">
	<%
	Blob blob = rs.getBlob("kyc");
	byte byteArrray[] = blob.getBytes(1, (int) blob.length());
	response.setContentType("image/gif");
	OutputStream os = response.getOutputStream();
	os.write(byteArrray);
	os.flush();
	os.close();
	out.println("congrats");
	%>
	</div>
	<%
}
else
{
		out.print("No image found with this id");
}
}
catch(Exception ex)
{
	System.out.println(ex);
	}
%>
</body>
</html>