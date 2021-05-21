<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="org.hibernate.cfg.Configuration" %>
    <%@page import="entitybeans.SkillsJobs" %>
    <%@page import="java.lang.Object" %>
    <%@page import="javax.servlet.http.HttpSession"%>
    <%@page import="org.hibernate.query.Query" %>
    <%@page import="java.util.List" %>
    <%@page import="java.sql.*" %>
   
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="Design.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<div class="navigation-bar" align="right">
<ul>
<li><a href="AddJob.jsp">Add Job</a></li>
<li><a href='DeleteJob.jsp'>Modify</a></li>
<li><a href='DeleteJob.jsp'>Delete</a></li>
<li><a href='changePsw.jsp'>Change Password</a></li>
<li><a href='Logout.jsp'>Logout.jsp</a></li>
</ul>
</div>

<%
try
{
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?user=root&password=Hello@dude1");
	
		pst=con.prepareStatement("select * from skillsjobs;");
		rs=pst.executeQuery();
	while(rs.next())
	{
	%>
	<div id="jobsportal">
	<td><h2 style="color:green;"><%=rs.getString("title") %></h2>
	<td><%=rs.getString("location") %>,
	<td>Country : <%=rs.getString("country") %><br>
	<td><%=rs.getString("YearsExp") %>  </td><br>
	<td>Post : <%=rs.getString("level") %><br>
	<td><small>Advertiser :<%=rs.getString("company") %></small>
	<td><h7 style="color:red;">Apply Now</h7>
	</div>
	<%
}
}
catch(Exception ex)
{
System.out.print(ex.toString());	
}
%>
<footer>
<div  align="right">
<hr>
<center>
&copy; Technology Jobs Portal.
All Right Reserved | Design by Ganesh N. Shinde
</center></div>
</footer>
</body>
</html>