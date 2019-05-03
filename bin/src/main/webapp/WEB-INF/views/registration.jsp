<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//db.onlinewebfonts.com/c/a4e256ed67403c6ad5d43937ed48a77b?family=Core+Sans+N+W01+35+Light" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="form.css" type="text/css">
</head>
<body>

	<div class="body-content">
		<div class="module">
			<h1>User Registration</h1>
				<form class="form" action="saveUser" method="POST"  modelAttribute="user">
					<div class="alert alert-error"></div>
						<input type="text" placeholder="First Name" name="firstName" required />
						<input type="text" placeholder="Last Name" name="lastName" />
						<input type="text" placeholder="Age" name="age" required />
	<select name="gender">
    <option value="Male">Male</option>
    <option value="Female">Female</option>
	</select>
						<input type="text" placeholder="Contact Number" name="contact" required />
						<input type="text" placeholder="City" name="city" required />
						<input type="text" placeholder="State" name="state" required />
						<input type="text" placeholder="UserID" name="userId" required />
						<input type="password" placeholder="Password" name="password" required />
						<input type="submit" value="Register" name="register" class="btn btn-block btn-primary" />
    </form>
  </div>
</div>
</body>
</html>