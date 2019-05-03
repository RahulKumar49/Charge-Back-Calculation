<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta charset="utf-8" />
<base href="/ChargeBack/">
<link rel="icon" type="image/png"
	href="resources/assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>ChargeBackApplication</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->

  <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />


<!-- Animation library for notifications   -->
<link href="resources/assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="resources/assets/css/demo.css" rel="stylesheet" />
<link href="resources/assets/css/Card.css" rel="stylesheet" />

<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
	<style>
	.container
	{
		position:relative;
		left:44px;
      	float:left;
		margin:0px;
		padding:0px;
		max-width: 920px !important;
	
	}
	.navbar-nav
	{
	    flex-direction: row !important;
	}
	.main-panel .navbar {
    margin-bottom: 0;
    height: 62px !important;
    z-index:-1px;
	
	
	</style>
</head>

<body>

	<div class="wrapper">
		<div class="sidebar" data-color="grey"
			data-image="resources/assets/img/sidebar-5.jpg">
			<div class="sidebar-wrapper">
				<div class="logo">
					<img src="resources/assets/img/logo.png" alt="Main" width="43"
						height="42" style="float: left"> <a href="customer/list"
						class="simple-text"> ChargeBack </a>
				</div>
				<ul class="nav">
					<li class="inactive">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img
						src="resources/assets/img/icon-user.png" alt="Smiley face"
						style="height: 52%; width: 75%;"> <br> <br>
						<p>

							<br>
						<p>
							<i class="pe-7s-user"></i> &nbsp
							${profile.firstName}&nbsp${profile.lastName}
						</p>
						<br>

						<p>
							<i class="pe-7s-call"></i> &nbsp ${profile.contact }
						</p>
						<br>

						<p>
							<i class="pe-7s-map-marker"></i>
						</p>

						<p>${profile.city},&nbsp${profile.state}</p>
						<br>
					</li>
					<div>
						<p class="nav navbar-nav navbar-right">
							<a href="/ChargeBack/customer/cbDetails" class="ml-4 mt-2"><button
									type="button"
									style="position: relative; left: 15px; top: 26px; height: 36px;
    font-size: 12px;"
									class="btn btn-info btn-fill pull-right">ChargeBack
									Details</button></a>
						</p>
					</div>
				</ul>

			</div>
		</div>

		<div class="main-panel">

			<nav class="navbar navbar-inverse navbar-sticky-top-fixed">
			<div class="container-fluid">
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-left">

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<c:url value="/customer/about"/>">
								<p style="color: white;">
									</i> About Us
								</p>
						</a></li>
						<li><a href="<c:url value="/logout"/>">
								<p style="color: white;">Log out</p>
						</a></li>

					</ul>
				</div>
			</div>
			</nav>

			<!-- Page Content -->
			<div class="container">
				<div class="row">
<!-- Header -->


<!-- Page Content -->
<div class="container">
<div class ="row">
	<h1 style="margin-top: 20px;margin-left: 378px;font-size: xx-large;">Meet our team</h1>
</div>
  <div class="row">
 
    <!-- Team Member 1 -->
    <div class="col-xl-4 col-md-4 mb-6" onclick="window.open('https://ankursnh023.github.io/','_newtab')">
      <div class="card border-0 shadow">
        <img src="resources/assets/img/faces/Ankur.jpg" style="height: 300px; width: 285px"class="card-img-top" alt="Ankur Sinha">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Ankur Sinha</h5>
          <div class="card-text text-black-50">Backend Developer</div>
        </div>
      </div>
    </div>
    <!-- Team Member 2 -->
    <div class="col-xl-4 col-md-4 mb-6" onclick="window.open('https://rahulkumar49.github.io/','_newtab')">
      <div class="card border-0 shadow">
        <img src="resources/assets/img/faces/Rahul.jpg"style="height: 300px; width: 285px" class="card-img-top" alt="Rahul Kumar">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Rahul Kumar</h5>
          <div class="card-text text-black-50">Backend Developer</div>
        </div>
      </div>
    </div>
    <!-- Team Member 3 -->
    <div class="col-xl-4 col-md-4 mb-6" onclick="window.open('https://prabhakaryadav.github.io/','_newtab')">
      <div class="card border-0 shadow">
        <img src="resources/assets/img/faces/Prabhakar.jpg"style="height: 300px; width: 285px" class="card-img-top" alt="Prabhakar Yadav">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Prabhakar Yadav</h5>
          <div class="card-text text-black-50">Backend Developer</div>
        </div>
      </div>
    </div>
  <!-- /.row -->
  <div class="justify-content-center"> 
   <!--  2nd row -->
  <div class="row">
  <div class="col-md-2">
  
  </div>
  <!-- Team Member 4 -->
    <div class="col-xl-4 col-md-4 mb-6" onclick="window.open('https://sarthak8895.github.io/Myprofile/','_newtab')">
      <div class="card border-0 shadow">
        <img src="resources/assets/img/faces/Sarthak.jpg" style="height: 300px; width: 285px" class="card-img-top" alt="Sarthak Shukla">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Sarthak Shukla</h5>
          <div class="card-text text-black-50">Frontend Developer</div>
        </div>
      </div>
    </div>
     <!-- Team Member 5 -->
    <div class="col-xl-4 col-md-4 mb-6" onclick="window.open('https://akash-2008.github.io/','_newtab')">
      <div class="card border-0 shadow">
        <img src="resources/assets/img/faces/Akash.jpg" style="height: 300px;" class="card-img-top" alt="Akash Kumar">
        <div class="card-body text-center">
          <h5 class="card-title mb-0">Akash Kumar</h5>
          <div class="card-text text-black-50">Frontend Developer</div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <div class="col-md-2">
  
  </div>
<!-- /.2 row -->
  </div>
  
</div>
<!-- /.container -->

				</div>
			</div>
		</div>

		<footer class="footer">
		<div class="container-fluid">
			<nav class="pull-left"> </nav>

		</div>
		</footer>

	</div>




</body>

<!--   Core JS Files   -->
<script src="resources/assets/js/jquery.3.2.1.min.js"
	type="text/javascript"></script>
<script src="resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="resources/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="resources/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="resources/assets/js/demo.js"></script>


</html>
