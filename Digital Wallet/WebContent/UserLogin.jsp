<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String usernm,pass;
String utype;
int id = 0;
usernm=request.getParameter("usnm");
pass=request.getParameter("pswd");

Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?user=root&password=Hello@dude1");

	pst=con.prepareStatement("select * from users where usnm=? and psw=? and userstatus='Active';");
	pst.setString(1, usernm);
	pst.setString(2, pass);
	rs=pst.executeQuery();  
	if(rs.next())
	{
	HttpSession sec=request.getSession(true);
	sec.setAttribute("userid", id);
	sec.getId();
	utype=rs.getString("usertype");
	if(utype.equals("Admin"))
		response.sendRedirect("Admin.jsp");
	else
		response.sendRedirect("User.jsp");
	}
	else
		response.sendRedirect("Error.html");
	con.close();
 }
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>