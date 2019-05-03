<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html lang="en">

<head>
<%@ page isELIgnored="false" %>
	<title>Chargeback</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	
	 <link href="<c:url value="/resources/login/images/icons/favicon.ico" />" rel="icon" type="image/png">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href=<c:url value="vendor/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	 <link href="<c:url value="/resources/login/css/util.css" />" rel="stylesheet">
	 <link href="<c:url value="/resources/login/css/main.css" />" rel="stylesheet">
<!--===============================================================================================-->
	<style>
		.moto
{
	position:relative !important;
	top:10px !important;
	background:#5f88a0;
}
	.login100-pic {
  width: 316px;
  position:relative !important;
  top:-28px !important;
}
.login100-form 
{
	  position:relative !important;
  top:-68px !important;
}
	</style>
</head>

<body>

	
	<div class="limiter">
		<div class="container-login100" style="background-color: #303538;">
			<div class="wrap-login100" style="width: 960px;
    height: 576px;">
			
				<div class="login100-pic js-tilt" data-tilt style="top: -100px !important;">
				<h1 class="login100-form-title" style="padding-bottom: 18px;    font-family: Tahoma, Geneva, sans-serif;">
					Manage Your Chargeback
					</h1>
					<div>
						<p>This application is for managing payment details and the associated chargeback with easy refunds services.</p>
					</div>
					<img src="<c:url value="/resources/login/images/img-01.png" />" alt="IMG"><br>
				</div>

				<form class="login100-form validate-form" method="POST" action='<spring:url value="/loginAction"/>' style="top: -100px !important;">
					<h2 style="    display: inline-block;
    font-size: 26px;
    margin-bottom: 10px;
    color: #333;
    text-transform: capitalize;    font-family: 'Raleway', sans-serif;">Login to your Account</h2>
    <br><p style="font-size: 18px;">Enter your details to login.</p><br>

					<div class="wrap-input100 validate-input" data-validate = "">
						<input class="input100" type="text" name="username" placeholder="User ID">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<c:if test="${not empty error }">
					<div style="color:red">${error }</div>
					</c:if>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
					<div class="text-center p-t-50">
						<a class="txt2" href="/ChargeBack/user/show">
							<h3>Create your account</h3>
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<c:url value="resources/login/js/main.js"/>" ></script>

</body>
</html>