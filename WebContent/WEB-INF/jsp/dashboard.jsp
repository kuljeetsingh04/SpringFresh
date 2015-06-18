<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">LOGO</a>
		</div>
		<div>
			       <ul class="nav navbar-nav"> 
			         <li class="active"><a href="#">Home</a></li> 
		         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Discover <span class="caret"></span></a> 
			           <ul class="dropdown-menu"> 
			             <li><a href="#">Our Technologies</a></li> 
			             <li><a href="#">Our Clients</a></li> 
			            <li><a href="#">Our Culture</a></li> 
			           </ul> 
			         </li> 
			         <li><a href="#">Careers</a></li> 
			         <li><a href="#">Vision 2016</a></li> 
			      </ul> 
			<ul class="nav navbar-nav navbar-right">
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Hi, ${student1.name}</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<div class="jumbotron">
			<h1>Dashboard</h1>
			<p>Now we'll actually start something with DB.</p>
		</div>
	</div>
</body>
</html>