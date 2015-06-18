<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<h2 id="heading" class="text-center">login!</h2>
		<div class="row">

		<div class= "row">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
		<span>${LoginErrorMessage}</span>
		</div>
		<div class="col-lg-2"></div>
		</div>
			<div class="col-lg-2"></div>

			<div class="col-lg-8">
				<!--  <div class="alert alert-danger alert-dismissible fade in"
				role="alert" id="message">${errormessage}
				</div>-->
				<form action="login.html" role="form"
					class="signin-form form-horizontal" id="register_form"
					method="post">
					<!--  	<div class="form-group">
				<label for="name" class="sr-only">Name: </label> <span
					class="glyphicon glyphicon-user"></span><input type="text"
					class="form-control" id="name" name="name" placeholder="Enter Name">
			</div>-->

					<div class="form-group" class="sr-only">
						<label for="email">Email id: </label><span
							class="glyphicon glyphicon-envelope"></span> <input type="email"
							class="form-control" id="email" name="email"
							placeholder="Enter E-mail id">
					</div>

					<div class="form-group" class="sr-only">
						<label for="pwd">Password: </label> <input type="password"
							class="form-control" id="pwd" name="pwd"
							placeholder="Enter Password">
					</div>


					<div class="form-group form-inline" class="sr-only">
						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="reset" class="btn btn-danger">Reset</button>
					</div>
				</form>
			</div>

			<div class="col-lg-2"></div>
		</div>
		
<!-- 	 	<div class= "row"> -->
<!-- <!-- 		<div class= "col-lg-8"> --> 
<!-- <!-- 		</div> --> 
		
<!-- 		<div class="col-lg-12"> -->
		
<!-- 		<div class="alert alert-danger alert-dismissible fade in " role="alert" id="footerMessage"> -->
<%-- 		${footerMessage} --%>
		
<!-- 		</div> -->
<!-- 		</div> -->
<!-- 		</div> -->
	</div>

</body>
</html>