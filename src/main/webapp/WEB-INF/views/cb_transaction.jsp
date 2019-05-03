<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8" />
	<base href="/ChargeBack/">
	<link rel="icon" type="image/png" href="resources/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>ChargeBackApplication</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="resources/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="resources/assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
	<style>
			/* Style the header */
.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed; /* Set the navbar to fixed position */
  top: 0; /* Position the navbar at the top of the page */
  width:81%; /* Full width */
  z-index:1;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change background on mouse-over */
.navbar a:hover {
  background: #ddd;
  color: black;
}

/* Main content */
.main {
  margin-top: 30px; /* Add a top margin to avoid content overlay */
}
		
		.dash
		{
				position:relative;
				top:58px;
		}
		
		</style>
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="grey" data-image="resources/assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
            	<img src="resources/assets/img/logo.png"  alt="Main" width="43" height="42" style="float:left">
                <a href="customer/list" class="simple-text">
                    ChargeBack
                </a>
            </div>

            <ul class="nav">
                <li class="inactive">
                
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="resources/assets/img/icon-user.png" alt="Smiley face" style="height: 75%; width: 75%;">
                        <br>
                
                        <br><p><i class="pe-7s-user"></i> &nbsp ${profile.firstName}&nbsp${profile.lastName}</p><br>
                    
                        <p><i class="pe-7s-call"></i> &nbsp ${profile.contact }</p><br>
                    
                        <p><i class="pe-7s-map-marker"></i></p>
                    
                        <p>${profile.city}&nbsp${profile.state}</p><br>
                </li>
                <!-- <li>
                    <a href="/ChargeBack/customer/cbDetails"  class="ml-4 mt-2"><button type="button" class="btn btn-info btn-block">ChargeBack Details</button></a>
                </li>  -->
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" >Welcome, ${profile.firstName}</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                     
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                        	<a href="<c:url value="/customer/about"/>">
                            <p style="color:white;"> </i> About Us</p>
                            </a>
                        </li>
                        
                        <li>
                            <a href="<c:url value="/logout"/>">
                                <p style="color:white;">Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                        
                        <div>
                            	<h4 class="nav navbar-nav navbar-left">Chargeback Transactions</h4>
                            </div>
                            <br>
                            <div class="header"></div>
                            <div class="content table-responsive table-full-width">
								<table class="table table-hover table-striped">
								  <thead class="thead-dark">
									    <tr>
									      <th scope="col">Transaction ID</th>
									      <th scope="col">Amount</th>
									      <th scope="col">Date</th>
									      <th scope="col">Dispute</th>
									      <th scope="col">Reason</th>
									      <th scope="col">Remarks</th>
									      <th scope="col"></th>
									      <th scope="col"></th>
									    </tr>
									  </thead>
								  <tbody>
								  <c:forEach var="temp" items="${transactions}">
								  
								   <%--  <c:url var="productsLink" value="/vendor/vendorproduct">
								  		<c:param name="vendorId" value="${temp.vid }"/>
								  	</c:url> --%>
								  	<c:set var="dis" value="${temp.dispute}"/>
								  <c:if test="${dis==1}">
								  <c:set var="dispute" value="Yes"/>
								  </c:if>
								  <c:if test="${dis==0}">
								  <c:set var="dispute" value="No"/>
								  </c:if>
								  
								    <tr>
									      <th scope="row">${temp.t_id}</th>
									      
									      <td>${temp.amount}</td>
									      <td>${temp.date}</td>
									      <td>${dispute}</td>
									      <td>${temp.reason}</td>
									      <td>${temp.remarks}</td>
									      <td><a href="customer/edit?id=${temp.t_id}" ><button type="button" class="btn btn-primary">Edit</button></a></td>
									      <td><a href="customer/openRefundPage?id=${temp.t_id }" class="btn btn-default btn-rounded mb-4"  >Refund</button></a></td>
									 </tr>
								  </c:forEach>
								  </tbody> 
								  
								</table>
							</div>
                        </div>
                    </div>
                    </div>


                </div>
            </div>
        </div>


        <footer class="footer">
            
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="resources/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="resources/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="resources/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="resources/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="resources/assets/js/demo.js"></script>

	

</html>