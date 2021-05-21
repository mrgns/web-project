<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="org.hibernate.cfg.*" %>
    <%@page import="entitybeans.SkillsJobs" %>
    
    <%@page import="org.hibernate.query.Query" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="Design.css"/>

<style>
.returnTag{border:2px inset black; background-color:lightgreen; border-radius:5px; height:30px; width:100px; align:center;}
</style>
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
<center>
<h2 style="color:grey;">Status : </h2>
<%
String Title=request.getParameter("Title");
String Company=request.getParameter("Company");
String Location=request.getParameter("Location");
String Type=request.getParameter("Type");
String Level=request.getParameter("Level");
String YearsExp=request.getParameter("YearsExp");
String Country=request.getParameter("Country");
String Skills=request.getParameter("Skills");

try
{
	Session ses;
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(SkillsJobs.class).buildSessionFactory();
	ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	SkillsJobs sk=new SkillsJobs();
	sk.setTitle(Title);
	sk.setCompany(Company);
	sk.setLocation(Location);
	sk.setType(Type);
	sk.setLevel(Level);
	sk.setYearsExp(YearsExp);
	sk.setCountry(Country);
	sk.setSkills(Skills);

	ses.save(sk);
	ses.getTransaction().commit();
	%>
	<h3 style="color:green;">Information Modified successfully</h3>
	<%
}
catch(Exception ex)
{%>
	<h3 style="color:red;"><%=ex.toString() %></h3>
<%}
%>
<br>
<div class="returnTag">
<a href="Admin.jsp">Back</a>
</div>
<br>
<footer>
<div  align="right">
<hr>
<center>
&copy; Technology Jobs Portal.
All Right Reserved | Contact <i>themrgns@outlook.com</i>
</center></div>
</footer>
</body>
</html>