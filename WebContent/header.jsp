<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Hello</title>
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
	background: yellow;
}

.fixed-header, .fixed-footer {
	width: 100%;
	position: fixed;
	background: red;
	padding: 10px 0;
	color: #fff;
}

.fixed-header {
	top: 0;
}

.fixed-footer {
	bottom: 0;
}

.container {
	width: 80%;
	margin: 0 auto; /* Center the DIV horizontally */
}

nav a {
	color: #fff;
	text-decoration: none;
	padding: 7px 25px;
	display: inline-block;
}
p{
text-align:right;
color:red;

}
</style>
</head>
<body>
	<p >
		Date/Time : <span id="date"></span>
	<script >
	
		var d = new Date();
		document.getElementById("date").innerHTML = d.toLocaleString();
		
	</script>
	</p>
	
	<div class="fixed-header">
		<div class="container">
			<nav>
				<a href="index.jsp">Home</a> <a href="#">About Us</a> <a href="#">Contact
					Us</a> <a href="registeredusers.jsp">View Registered Users</a> <a
					href="signup.jsp">Sign Up</a>
			</nav>
		</div>
	</div>
	<div class="fixed-footer">
		<div class="container">
			<center>Copyright &copy; 2020</center>
		</div>
	</div>
</body>
</html>


