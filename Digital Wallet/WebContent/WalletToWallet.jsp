<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="beans.DBConnection" %>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	 <link rel="stylesheet" type="text/css" href="Design.css"/>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div></header>
<center><h2>Add money in <i class="fab fa-google-wallet fa-1x"></i><small>e-Wallet</small> </h2></center>
<%
int id=Integer.parseInt(request.getParameter("walletid"));
int id1=Integer.parseInt(request.getParameter("walletid1"));
double bal=Double.parseDouble(request.getParameter("amount"));

Connection con;
PreparedStatement pst;
ResultSet result,result1;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/walletdb?user=root&password=Hello@dude1");

	pst=con.prepareStatement("update wallet set balance=balance-? where walletid=?;");
	pst.setDouble(1, bal);
	pst.setInt(2, id);
	int res=pst.executeUpdate();
	
	if(bal>1000)
	{
		int cashback=50;
		pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?");
		pst.setDouble(1, cashback);
		pst.setInt(2, id);
		int cat=pst.executeUpdate();
	
	}
	
	pst=con.prepareStatement("select * from wallet where walletid=?");
	pst.setInt(1, id);
	result=pst.executeQuery();
	if(result.next())
	{
		double amount=Double.parseDouble(result.getString("balance"));
		pst=con.prepareStatement("insert into transaction values(?,?,now(),'Deposit',?,?)");
		pst.setInt(1, id);
		pst.setNString(2, result.getNString("name"));
		pst.setDouble(3, bal);
		pst.setDouble(4, amount);
		int trans=pst.executeUpdate();
	}
	if(res>=0)
	{
		res=0;
		pst=con.prepareStatement("update wallet set balance=balance+? where walletid=?;");
		pst.setDouble(1, bal);
		pst.setInt(2, id1);
		res=pst.executeUpdate();
		
		pst=con.prepareStatement("select * from wallet where walletid=?");
		pst.setInt(1, id);
		result1=pst.executeQuery();
		if(result1.next())
		{
			double amount=Double.parseDouble(result.getString("balance"));
			pst=con.prepareStatement("insert into transaction values(?,?,now(),'Deposit',?,?)");
			pst.setInt(1, id);
			pst.setNString(2, result.getString("name"));
			pst.setDouble(3, bal);
			pst.setDouble(4, amount);
			int trans=pst.executeUpdate();
		if(trans>=0)
		{
			%>
			<script type="text/javascript">
            alert("Status : Done"); 
        </script>
			<h2 style="color:green; margin-top:20%; margin-left:5%;">Status : Success</h2>
			<%
			session.invalidate();
		}
		else
		{
		%>
		<h2 style="color:red; margin-top:20%; margin-left:5%;">Status : Failed</h2>
			<%
		}
	}
	else
	{
		System.out.println("process failed .....?");
	}
	
}
}
catch(Exception ex)
{
	System.out.println("Error : "+ex);
	}
%>
<footer>
<a href="user.jsp" class="btn btn-primary">Back</a>
</footer>
</body>
</html>