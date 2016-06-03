<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css">
<style type="text/css">
body {
	background:
		url("${pageContext.request.contextPath}/images/background.jpg");
}
</style>
<script src="script.js"></script>
<title>Code Quiz - Test Your Programming Knowledge!</title>
</head>
<body>
	<div class='logo'>
		<a href='${pageContext.request.contextPath}'><img height=90%
			width=90% src="${pageContext.request.contextPath}/images/logo.png" /></a>
	</div>
	<div id='navbar'>
		<ul>
			<li><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
			<li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
			<li class='active'><a
				href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
			<li><a href='${pageContext.request.contextPath}/userPanel'><span>My
						Results</span></a></li>
			<li><a href='mailto:berksoysal@gmail.com'><span>Feedback</span></a></li>
			<li><a href='https://ca.linkedin.com/in/berksoysal'
				target="_blank"><span>Contact us</span></a></li>
		</ul>
	</div>


	<div id="wrapper">

		<form name="login-form" class="login-form">
			<div class="header" style="height: 60px;">

				<h3 style="float: left;">
					Congratulations ${requestScope.newUser}, your account has been
					created successfully! Please <a
						href="${pageContext.request.contextPath}/login">login </a>to take
					an exam.
				</h3>
			</div>

		</form>

	</div>


</body>
</html>
