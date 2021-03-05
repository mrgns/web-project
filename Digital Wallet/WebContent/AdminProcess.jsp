<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/85e0da534d.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

	<link rel="stylesheet" href="bootstrap.min.css"/>
	 <link rel="text/javascript" src="design/js/bootstrap.min.js"/>
	 <link rel="stylesheet" href="CSS/Style3.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="flex">
  <nav>
    <a class="logo" href="#">
    <h2>e-Wallet</h2>
    <p><i class="fab fa-google-wallet fa-5x"></i></p>
  </a>

<a href="AddMoney.jsp">
    <i class="fa fa-rupee-sign fa-lg"></i> 
    <span>Add Money</span>
  </a>

  <a href="WalletToWalleFrorm.jsp">
    <i class="fa fa-user fa-lg"></i>
    <span><b>Send Amount</b></span>
  </a>
  
  <a href="GenerateWalletId.jsp">
    <i class="fa fa-portrait fa-lg"></i>
    <span>Generate WalletID</span>
  </a>

 <a href="DailyReport.jsp">
     <i class="fa fa-file-alt fa-lg"></i>
    <span>Daily Report</span>
  </a>

  <a  href="ActivateDeactivate.jsp">
    <i class="fa fa-toggle-on fa-lg"></i>
    <span>Ac/Deactivate</span>
  </a>

  <a href="ChangePassword.jsp">
    <i class="fa fa-unlock-alt fa-lg"></i>
    <span>Change Password</span>
  </a>

  <a href="ShowDocument.jsp">
    <i class="fa fa-id-card-alt fa-lg"></i>
    <span>Show Kyc Doc</span>
  </a>
	
  <a href=" ">
    <i class="fa fa-cog fa-lg"></i>
    <span>Setting</span>
  </a>

  <a href="#">
    <i class="fa fa-question-circle fa-lg"></i>
    <span>Help</span>
  </a> 
  
  <a href="logout.jsp">
    <i class="fa fa-sign-out-alt fa-lg"></i>
    <span>Sign out</span>
  </a>

  </nav>
  <div class="contents">
    
  </div>
</div>

</body>
</html>