<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="org.hibernate.cfg.Configuration" %>
    <%@page import="mybeans.Jobs" %>
    <%@page import="javax.servlet.http.HttpSession"%>
    <%@page import="org.hibernate.query.Query" %>
    <%@page import="java.util.List" %>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#jobsportal
{
	height:200px;
	width:600px;
	border:2px outset black;
	margin:5px;
}
#boxes
{
 content: "";
  display: table;
  clear: both;
}
#column1 {
	margin-left:10px;
        background-color: #a0e9ed;
        width: 20%;
        }
div {
  float: left;
  height: 470px;
  width: 23%;
  padding: 10px 5%;
}
</style>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Homepage</title>
</head>
<body>
<img src="images/job3.png">
<hr>
<header style='display:inline;'>

<span width='500px' height='300px'>
<i class="bi bi-search"></i><h1><b>Technology Jobs portal</b></h1>
</span>
</header>

<marquee class="marquee"> 200+ Jobs, Recruitment, Staffing, and Hiring | Show your talent, grab a Job 
|Recruitment staffing engine | Trust Us! We will build your success</marquee>
<br>

<main id="boxes">

<div id="column1" align="left" height="10%" width="2%">
<label for="Skills">Skills</label><br>
<a href="Skills.jsp?type='Engineering'">Engineering</a><br>
<a href="Skills.jsp?type='Sales'">Sales</a><br>
<a href="Skills.jsp?type='Big Data'"></a><br>
<a href="Skills.jsp?type='Compiling Statistics'">Compiling Statistics</a><br>
<a href="Skills.jsp?type='Data Analytics'">Data Analytics</a><br>
<a href="Skills.jsp?type='Data Mining'">Data Mining</a><br>
<a href="Skills.jsp?type='Database Management'">Database Management</a><br>
<a href="Skills.jsp?type='Documentation'">Documentation</a><br>
<a href="Skills.jsp?type='Needs Analysis'">Needs Analysis</a><br>
<a href="Skills.jsp?type='Statistical Analysis'">Statistical Analysis</a><br>
</div>
<div id="column2 align="right" style="margin-right:20px;">
<%
try
{
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?user=root&password=Hello@dude1");
	
		pst=con.prepareStatement("select * from jobs;");
		rs=pst.executeQuery();
	while(rs.next())
	{
	%>
	<center>
	<div id="jobsportal">
	<td><h2 style="color:green;"><%=rs.getString("title") %></h2>
	<td><%=rs.getString("place") %>,
	<td><%=rs.getString("country") %><br>
	<td><%=rs.getString("start_date") %>  -  <%=rs.getString("end_date") %></td><br>
	<td><%=rs.getString("salary") %> /
	<td><%=rs.getString("time_period") %><br>
	<td><small><%=rs.getString("advertiser") %></small>
	<td><a href="Registration.jsp" class="regi" style="color:red;">Apply Now</a>
	</div><br>
	</center>
	
	<%}
	ResultSet rs1;
	pst=con.prepareStatement("select * from skillsjobs;");
	rs1=pst.executeQuery();
while(rs.next())
{
%>
<div id="jobsportal">
<td><h2 style="color:green;"><%=rs1.getString("title") %></h2>
<td><%=rs1.getString("location") %>,
<td>Country : <%=rs1.getString("country") %><br>
<td><%=rs1.getString("YearsExp") %>  </td><br>
<td>Post : <%=rs1.getString("level") %><br>
<td><small>Advertiser : <%=rs1.getString("company") %></small>
<td><h7 style="color:red;">Apply Now</h7>
</div>
<%
}
}
catch(Exception ex)
{
System.out.println(ex.getMessage());	
}
%>
</div>
</main>
<br>

<footer style="margin-top:125%;" align="center">
<a href="Logout.jsp">LogOut</a><br>
<hr/>
&copy; Technology Jobs Portal.
All Right Reserved | Design by Ganesh N. Shinde
</footer>
</body>
</html>