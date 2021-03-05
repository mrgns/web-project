<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="beans.DBConnection" %>
    <%@page import="beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String usnm=request.getParameter("usnm");

Wallet wal=new Wallet();
wal.setId(id);
double bal=wal.getBalance();
%>
<label>Balance :<%=bal %> </label>
<%
Accounts acc=new Accounts();
acc.setAccnm(usnm);
double bal1=acc.getBalance();
%>
<label>Balance :<%=bal1 %> </label>
</body>
</html>