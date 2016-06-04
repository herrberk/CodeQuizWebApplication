<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>Code Quiz - Test Your Programming Knowledge!</title>
</head>
<body>
	<div class='logo'>
		<a href='${pageContext.request.contextPath}'><img height=90%
			width=90% src="${pageContext.request.contextPath}/images/logo.png" /></a>
	</div>
	<div id='navbar'>
		<ul>
			<li class='active'><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
			<li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
			<li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
			<li><c:if test='${not empty sessionScope.user}'>
					<a href='${pageContext.request.contextPath}/userPanel'>
				</c:if> 
				<c:if test='${empty sessionScope.user}'>
					<a href='${pageContext.request.contextPath}'>
				</c:if> 
				
				<span>My Results</span></a></li>
			<li><a href='mailto:berksoysal@gmail.com'><span>Feedback</span></a></li>
			<li><a href='https://ca.linkedin.com/in/berksoysal'
				target="_blank"><span>Contact us</span></a></li>
		</ul>
	</div>

	<c:if test='${not empty sessionScope.user}'>

		<a href='${pageContext.request.contextPath}/userPanel'>
			<div class="button nameuser">Logged as, ${sessionScope.user}</div>
		</a>

		<a href='${pageContext.request.contextPath}/logout'>
			<div class="button logout">Logout</div>
		</a>
	</c:if>

	<div style="position: absolute; left: 5%; top: 35%;">
		<table cellpadding="0" cellspacing="50">

			<tr>
				<td class="pic"><a href="takeExam?test=java">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/java.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Test your Java!</h1>
								<p class="caption__overlay__content">Take a Java Quiz to
									test your knowledge..</p>
							</div>
						</div>
				</a></td>
				<td class="pic"><a href="takeExam?test=javascript">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/javascript.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Test your JS!</h1>
								<p class="caption__overlay__content">Find out your
									JavaScript level..</p>
							</div>
						</div>
				</a></td>
				<td class="pic"><a href="takeExam?test=sequel">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/sql-logo.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Are you good at SQL?</h1>
								<p class="caption__overlay__content">Take a quick SQL quiz
									to find out!</p>
							</div>
						</div>
				</a></td>
				<td class="pic"><a href="takeExam?test=python">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/python.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Test your Python!</h1>
								<p class="caption__overlay__content">Take a Python Quiz to
									test your knowledge..</p>
							</div>
						</div>
				</a></td>
			</tr>

			<tr>
				<td class="pic"><a href="takeExam?test=css">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/css.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Take this CSS Quiz</h1>
								<p class="caption__overlay__content">to test your web design
									skills..</p>
							</div>
						</div>
				</a></td>
				<td class="pic"><a href="takeExam?test=php">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/php-logo.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Test your PHP!</h1>
								<p class="caption__overlay__content">Take this PHP Quiz to
									test your knowledge..</p>
							</div>
						</div>
				</a></td>
				<td class="pic"><a href="takeExam?test=c">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/c-logo.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Are you good at C ?</h1>
								<p class="caption__overlay__content">Click to find out!</p>
							</div>
						</div>
				</a></td>
				<td class="pic"><a href="takeExam?test=ruby">
						<div class="caption">
							<img class="caption__media" width="200" height="200"
								src="${pageContext.request.contextPath}/images/ruby.jpg" />
							<div class="caption__overlay">
								<h1 class="caption__overlay__title">Click to test your
									Ruby..</h1>
								<p class="caption__overlay__content">Find out how good you
									are!</p>
							</div>
						</div>
				</a></td>
			</tr>

		</table>
	</div>


</body>
</html>
