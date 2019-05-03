 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="<c:url value="/resources/registration/images/icons/favicon.ico" />" rel="icon" type="image/png">
    
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- <title>Sign Up Form by Colorlib</title> -->

    <!-- Font Icon -->
  <!--   <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css"> -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Main css -->
    <link rel="stylesheet" href="<c:url value="/resources/registration/css/style.css" />">
    <script>
    function FormValidation(){
        //First Name Validation 
        var fname=document.getElementById('first_name').value;
        var lname=document.getElementById('last_name').value;
        var age=document.getElementById('age').value;
     
        var contact=document.getElementById('phone_number').value;
        var state=document.getElementById('state').value;
        var city=document.getElementById('city').value;
        var user=document.getElementById('userid').value;
        var pass=document.getElementById('password').value;
        if(fname == ""  ){
        	
      
           
        
            document.getElementById('first_name').style.borderColor = "red";
            document.getElementById('firste').innerHTML = "First name  should not be empty";
            document.getElementById('firste').focus();
            return false;
            
           }
        else{
            if (/^[0-9]+$/.test(document.getElementById("first_name").value)) {
            	document.getElementById('firste').innerHTML = "First name can not have digits";
                
                document.getElementById('first_name').style.borderColor = "red";
                return false;
            }else{
            	 document.getElementById('firste').innerHTML = "";
                document.getElementById('first_name').style.borderColor = "green";
                
            }
            if(fname.length <=2){
            	document.getElementById('firste').innerHTML = "name is too small";
                document.getElementById('first_name').style.borderColor = "red";
                return false;
            }else{
            	document.getElementById('firste').innerHTML = "";
                document.getElementById('first_name').style.borderColor = "green";
            }
           
          
            
            
           
        }
        
        if(lname=="")
        	{
        	 
        	document.getElementById('last_name').style.borderColor = "red";
        	 document.getElementById('laste').innerHTML = "Last name  should not be empty";
             document.getElementById('laste').focus();
        	  return false;
        	}else{
        		if (/^[0-9]+$/.test(document.getElementById("last_name").value)) {
        			document.getElementById('laste').innerHTML = "Last name  can not have digits";
                    
                    document.getElementById('last_name').style.borderColor = "red";
                    return false;
                }else{
                	document.getElementById('laste').innerHTML = "";
                    document.getElementById('last_name').style.borderColor = "green";
                }
             
        	   }
        if(age=="")
        	{
        	
        	document.getElementById('age').style.borderColor = "red";
        	document.getElementById('agee').innerHTML = "Please enter a valid age ";
      	  return false;
      	}else{
      		if(isNaN(age) || age.length<1 || age.length>3 || parseInt(age)<1 || parseInt(age)>99)
        	   {
      			document.getElementById('agee').innerHTML = "Please enter a valid age ";
               document.getElementById('age').style.borderColor = "red";
        	   return false;
        	   }else{
        		   document.getElementById('agee').innerHTML = " ";
        		   document.getElementById('age').style.borderColor = "green";
        	   }
      	   }
        if(contact=="")
        	{
        	document.getElementById('phone_number').style.borderColor =  "red";
        	document.getElementById('contacte').innerHTML = "Please enter valid contact ";
        	return false;
        	}else{
        		  if(contact.length<10 || contact.length>10)
           	   {
        				document.getElementById('contacte').innerHTML = "Please enter valid contact ";
                  document.getElementById('phone_number').style.borderColor = "red";
           	   return false;
           	   }else{
           		document.getElementById('contacte').innerHTML = " ";
           		   document.getElementById('phone_number').style.borderColor = "green";
           	   }
        		
        	}
        if(city=="")
    	{
    	document.getElementById('city').style.borderColor = "red";
    	document.getElementById('citye').innerHTML = "Please enter city ";
    	  return false;
    	}else{
    		document.getElementById('citye').innerHTML = "";
    		   document.getElementById('city').style.borderColor = "green";
    	   }
        if(state=="")
        	{
        	document.getElementById('state').style.borderColor = "red";
        	document.getElementById('statee').innerHTML = "Please enter valid state";
        	  return false;
        	}else{
        		document.getElementById('statee').innerHTML = " ";   
        		document.getElementById('state').style.borderColor = "green";
        	   }
      
        if(user=="")
    	{
    	document.getElementById('userid').style.borderColor = "red";
    	document.getElementById('usere').innerHTML = "Please enter username";
    	  return false;
    	}else{
    		document.getElementById('usere').innerHTML = " ";  
    		document.getElementById('userid').style.borderColor = "green";
    	   }
        if(pass=="")
    	{
    	document.getElementById('password').style.borderColor = "red";
    	document.getElementById('passe').innerHTML = "Please enter password ";
    	  return false;
    	}else{
    		document.getElementById('passe').innerHTML = " ";   
    		document.getElementById('password').style.borderColor = "green";
    	   }
        
    
        
       
    }

    </script>
    
    
     <style>
    	
    	.container
    	{
    	    height: 804px;
    	}
    	.register-form {
    padding: 93px 115px 90px 80px;
    margin-bottom: -8px;
    position: relative;
    left: 39px;
    }
    #details-enter
    {
    	    position: relative;
    		left: 18%;
    }
    
 
    .navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed; /* Set the navbar to fixed position */
  top: 0; /* Position the navbar at the top of the page */
  width:100%; /* Full width */
  z-index:1;
}

.signup-img img {
    position: relative; 
    top: -81px !important;
    left:30px;
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
.form-submit {
    text-align: right;
    display: block;
    position: relative;
    top: -37px !important;
}
/* Change background on mouse-over */
.navbar a:hover {
  background: #ddd;
  color: black;
}

.phone
{
position:relative;
top:-33px;
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

    <div class="main" >

<c:set var="query" value="${pageContext.request.queryString }"/>
<div class="modal fade" id="registrationSuccess" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Registration Details</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<p style="color:black">New user created successfully.</p>
								</div>
								<div class="modal-footer">
									<a href="/ChargeBack/login"><button type="button" class="btn btn-primary">Ok</button></a>
								</div>
							</div>
						</div>
					</div>
<div class="modal fade" id="exist" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Registration Details</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<p style="color:black">User already exists!</p>
								</div>
								<div class="modal-footer">
									<a href="/ChargeBack/login"><button type="button" class="btn btn-primary">Ok</button></a>
								</div>
							</div>
						</div>
					</div>					
					
        <div class="container">
        <c:if test="${status==true}">
         <%-- <c:if test="${query}=="> --%>
        <script type="text/javascript">$('#registrationSuccess').modal('show');</script>
					</c:if>
					<c:if test="${query=='exist'}">
						<script type="text/javascript">$('#exist').modal('show');</script>
					</c:if>
            <div class="signup-content">
           <div class="signup-img">
                    <img src="images/bank.jpg" alt="">
                    <div class="signup-img-content">
                        <img src="/ChargeBack/resources/registration/images/back1.jpg" style="height: 100%; width:100%; alt="Bank">
                       
                    </div>
                </div>
                <div class="signup-form">
                        <h2 id="details-enter">Charge Back Application</h2>
                                   
                    <form class="register-form" name="register-form" id="register-form" action="saveUser" onsubmit="return FormValidation();" onchange="return FormValidation();"  method="POST"  modelAttribute="user">
                        <div class="form-row">
                            <div class="form-group">
                                   
                                <div class="form-input">
                                    <label for="first_name" class="required">First name</label>
                                    <input type="text" name="firstName" id="first_name" Placeholder="First Name" />
                                    <font color='red'> <DIV id="firste"> </DIV> </font>
                         
                                </div>
                                <div class="form-input">
                                    <label for="last_name" class="required">Last name</label>
                                    <input type="text" name="lastName" id="last_name" placeholder="Last Name" />
                                    <font color='red'> <DIV id="laste"> </DIV> </font>
                                  
                                </div>
                                <div class="form-input">
                                    <label for="age" class="required">Age</label>
                                    <input type="number" name="age" id="age" Placeholder="Age" />
                                    <font color='red'> <DIV id="agee"> </DIV> </font>
                                  
                                </div>
                                <div class="form-input">
                                        <div class="form-select">
                                                <div class="label-flex">
                                                    <label for="meal_preference">Gender</label>
                                                </div>
                                                <div class="select-list" >
                                                    <select name="gender" id="meal_preference" class="form-control">
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>        
                                                    </select>
                                             
                                            </div>
                                            </div>
                                           
                                            </div>
                                
                                <div class="form-input phone">
                                    <label for="phone_number" class="required">Contact number</label>
                                    <input type="number" name="contact" id="phone_number" placeholder="Contact Number" />
                                   <font color='red'> <DIV id="contacte"> </DIV> </font>
                                </div>
                            </div>
                            <div class="form-group">   
                                
                                    <div class="form-input">
                                        <label for="city" class="required">City</label>
                                        <input type="text" name="city" id="city" Placeholder="City" />
                                        <font color='red'> <DIV id="citye"> </DIV> </font>
                                         
                                    </div>
                            
                                    <div class="form-input">
                                        <label for="state" class="required">State</label>
                                        <input type="text" name="state" id="state" Placeholder="State"  />
                                         <font color='red'> <DIV id="statee"> </DIV> </font>
                                    </div>
                                    <div class="form-input">
                                        <label for="userid" class="required">User ID</label>
                                        <input type="text" name="userId" id="userid" Placeholder="User Id" />
                                        <font color='red'> <DIV id="usere"> </DIV> </font>
                                    </div>
                                    <div class="form-input">
                                        <label for="password" class="required">Password</label>
                                        <input type="password" name="password" id="password" Placeholder="Password"  />
                                        <font color='red'> <DIV id="passe"> </DIV> </font>
                                    </div>
                            </div>
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Register" class="submit" id="submit" name="register" />    
                            
                        </div>
                    </form>
                    
                    
                </div>
              
            </div>
        </div>

    </div>
   
   
</body>
</html>