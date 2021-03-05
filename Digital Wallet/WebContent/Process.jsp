<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.process1
{
margin-top:10%;
margin-left:5%;
margin-bottom:5%;

}
div.gallery {
background-color:white;
  margin: 20px;
  border: 1px solid #ccc;
  float: left;
  width: 100px;
  height:150px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: 50%;
}

div.desc {
  padding: 2px;
  text-decoration:bold;
  text-align: center;
 color:black;
}
</style>
</head>
<body>
<hr>
<div class="process1">
<div class="gallery">
  <a target="_blank" href="AddMoney.jsp" onclick="AddMoney.jsp">
    <img src="https://img.icons8.com/color/48/000000/money-box--v2.png"  width=auto height=auto>
	<div class="desc">AddMoney</div>  
  </a>
</div>

<div class="gallery">
  <a target="_blank" href="WalletToWalleFrorm.jsp">
    <img src="https://img.icons8.com/color/96/000000/money-transfer.png"/>
  <div class="desc">Transfer</div>
  </a>
</div>

<div class="gallery">
  <a target="_blank" href="Electricity.jsp">
    <img src="https://img.icons8.com/color/96/000000/lightning-bolt.png"/>
  <div class="desc">Electricity</div>
  </a>
</div>

<div class="gallery">
  <a target="_blank" href="MobileRecharge.jsp">
    <img src="https://img.icons8.com/color/48/000000/google-mobile.png"/>
    <div class="desc">Mobile Recharge</div>
  </a>
  
</div>
<div class="gallery">
  <a target="_blank" href="DthPayment.jsp">
    <img src="https://img.icons8.com/color/48/000000/reality-stars.png"/>
    <div class="desc">DTH</div>
  </a>
</div>


<div class="gallery">
  <a target="_blank" href="LifeInsurance.jsp">
    <img src="https://img.icons8.com/color/48/000000/heart-health.png"/>
    <div class="desc">LIC Insurance</div>
  </a>
</div>

<div class="gallery">
  <a target="_blank" href="EducationFees.jsp">
    <img src="https://img.icons8.com/color/48/000000/university.png"/>
    <div class="desc">Education Fees</div>
  </a>
</div>
</div>
</body>
</html>