<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Blob"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int walletid=Integer.parseInt(String.valueOf(session.getAttribute("walletid")));
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
	Blob blob = rs.getBlob("pimage");
	byte byteArrray[] = blob.getBytes(1, (int) blob.length());
	response.setContentType("image/gif");
	OutputStream os = response.getOutputStream();
	os.write(byteArrray);
	os.flush();
	os.close();
	out.println("congrats");
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