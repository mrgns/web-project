<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="org.hibernate.cfg.Configuration" %>
    <%@page import="mybeans.*" %>
    <%@page import="java.lang.Object" %>
    <%@page import="javax.servlet.http.HttpSession"%>
    <%@page import="org.hibernate.query.Query" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	String id=request.getParameter("userid");
String usnm=request.getParameter("usnm");
String psw=request.getParameter("psw");


	Session ses;
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Users.class).buildSessionFactory();
	ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	
		Query qa=ses.createQuery("update Users set psw=:pass where usnm=:usnm");
		qa.setParameter("pass",psw);
		qa.setParameter("usnm", usnm);
		int res=qa.executeUpdate();
	ses.getTransaction().commit();
	
	ses.close();
	
	if(res>0)
	{%>
		<h3 style="color:green;">Password Change Successfully........</h3>
	<% }
	else
	{%>
		<h3 style="color:red;">Password Doesn't Change..........</h3>
	<%}
	
}
catch(Exception ex)
{%>
<h3 style="color:red;">Error in Process : <%=ex.toString()%></h3>
<%
	
}


%>
</body>
</html>