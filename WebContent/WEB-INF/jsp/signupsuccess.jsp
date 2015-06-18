<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">LOGO</a>
		</div>
		<div>
			<!--       <ul class="nav navbar-nav"> -->
			<!--         <li class="active"><a href="#">Home</a></li> -->
			<!--         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a> -->
			<!--           <ul class="dropdown-menu"> -->
			<!--             <li><a href="#">Page 1-1</a></li> -->
			<!--             <li><a href="#">Page 1-2</a></li> -->
			<!--             <li><a href="#">Page 1-3</a></li> -->
			<!--           </ul> -->
			<!--         </li> -->
			<!--         <li><a href="#">Page 2</a></li> -->
			<!--         <li><a href="#">Page 3</a></li> -->
			<!--       </ul> -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>


	<div class="container">
		<h2 id="heading" class="text-center">You are now Registered!</h2>

		<!--  <div class="alert alert-danger alert-dismissible fade in"
				role="alert" id="message">${errormessage}
				</div>-->
		<div>
			<label for="name">Name: </label> <span
				class="glyphicon glyphicon-user"></span> <label>${student1.name}</label>
		</div>

		<div>
			<label for="pwd">Password: </label> <label>${student1.pwd}</label>
		</div>

		<div>
			<label for="email">Email id: </label><span
				class="glyphicon glyphicon-envelope"></span> <label>${student1.email}</label>
		</div>
		
		<div>
			<label for="mobile">Mobile Number: </label><span
				class="glyphicon glyphicon-iphone"></span> <label>${student1.mobile}</label>
		</div>
		
		<div>
			<label for="DOB">DOB: </label><span
				class="glyphicon glyphicon-calendar"></span> <label>${student1.DOB}</label>
		</div>
		
		<div>
			<label for="hobby">Hobby: </label><span
				class="glyphicon glyphicon-music"></span> <label>${student1.hobby}</label>
		</div>

		<div>
			<label for="sAddress.city">City: </label> <label>${student1.sAddress.city}</label>
		</div>

		<div>
			<label for="sAddress.country">Country: </label> <label>${student1.sAddress.country}</label>
		</div>

		<div>
			<label for="sAddress.country">Pincode: </label>
			<label>${student1.sAddress.pincode}</label>
		</div>


	</div>
</body>
</html>