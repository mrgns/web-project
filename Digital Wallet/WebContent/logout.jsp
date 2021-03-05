<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	<link rel="stylesheet" type="text/css" href="Design.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
var myVar = setInterval(myTimer, 1000);

function myTimer() {
    var d = new Date();
    dtm=d.toLocaleDateString()+" "+d.toLocaleTimeString()
    document.getElementById("demo").innerHTML = dtm;
}

</script>
</head>
<body>
<%HttpSession sec=request.getSession(true); %>
<header>
<div style="display: inline;" width=500px height=300px>
<i class="fab fa-google-wallet fa-5x"></i><small>e-Wallet</small>
</div>
<div id="demo" align="right"></div>
</header>
<%
session.invalidate();
%>
<h2 style="margin-top:20%; margin-left:2%;"> Logout Succesfully </h2>

<jsp:include page="footer.jsp"></jsp:include>
<a href="index.jsp" class="btn btn-info btn-lg">Home</a>

</body>
</html>