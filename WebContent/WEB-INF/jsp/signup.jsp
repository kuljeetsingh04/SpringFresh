<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	
	<div class="row">
		<h2 id="heading" class="text-center">Register Me!</h2>

<!-- 		  <div class="alert alert-danger alert-dismissible fade in" -->
<%-- 				role="alert" id="message"><form:errors path="student1.*" /> --%>
<!-- 				</div> -->
			<div class= "col-lg-2">
			</div>
			
			<div class= "col-lg-8">	
				 <div  id="message"><form:errors path="student1.*" />
				</div>
		<form action="register.html" role="form"
			class="signin-form form-horizontal" id="register_form" method="post">
			<div class="form-group" class="sr-only">
				<label for="name">Name: </label> <span
					class="glyphicon glyphicon-user"></span><input type="text"
					class="form-control" id="name" name="name" placeholder="Enter Name">
			</div>

			<div class="form-group" class="sr-only">
				<label for="pwd">Password: </label> <input type="password"
					class="form-control" id="pwd" name="pwd"
					placeholder="Enter Password">
			</div>

			<div class="form-group" class="sr-only">
				<label for="email">Email id: </label><span
					class="glyphicon glyphicon-envelope"></span> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="Enter E-mail id">
			</div>
			
			<div class="form-group" class="sr-only">
				<label for="DOB">DOB: </label><span
					class="glyphicon glyphicon-calendar"></span> <input type="text"
					class="form-control" id="DOB" name="DOB"
					placeholder="Enter Your Date of Birth">
			</div>
			
			<div class="form-group" class="sr-only">
				<label for="mobile">Mobile Number: </label><span
					class="glyphicon glyphicon-iphone"></span> <input type="text"
					class="form-control" id="mobile" name="mobile"
					placeholder="Enter Your Mobile Number">
			</div>
			
			<div class="form-group" class="sr-only">
				<label for="hobby">Hobby: </label><span
					class="glyphicon glyphicon-music"></span> <input type="text"
					class="form-control" id="hobby" name="hobby"
					placeholder="Enter Your Hobby">
			</div>

			<div class="form-group" class="sr-only">
				<label for="sAddress.city">City: </label> <input type="text"
					class="form-control" id="student.city" name="sAddress.city" placeholder="Enter Your City">
			</div>
			
			<div class="form-group" class="sr-only">
				<label for="sAddress.country">Country: </label> <input type="text"
					class="form-control" id="student.country" name="sAddress.country" placeholder="Enter Your Country">
			</div>
			
			<div class="form-group" class="sr-only">
				<label for="sAddress.country">Pincode </label> <input type="text"
					class="form-control" id="student.pincode" name="sAddress.pincode" placeholder="Enter Your Pincode">
			</div>

			<div class="form-group form-inline" class="sr-only">
				<button type="submit" class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Reset</button>
			</div>
			
			

		</form>
		</div>
		
		<div class= "col-lg-2">
			</div>
			
<!-- 			<div class="alert alert-danger alert-dismissible fade in"  -->
<%--  				role="alert" id="message">${footerMessage} --%>
<!--  				</div> -->
		</div>
		
		<div class= "row">
<!-- 		<div class= "col-lg-8"> -->
<!-- 		</div> -->
		
		<div class="col-lg-12">
		
		<div class="alert alert-danger alert-dismissible fade in" role="alert" id="footerMessage">
		${footerMessage}
		
		</div>
		</div>
		</div>
	</div>

</body>
</html>