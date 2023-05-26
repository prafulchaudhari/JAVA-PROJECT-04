<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Your custom styles -->
<style>
body {
	background-color: #eeff41;
}
</style>
</head>
<body>
	<h1 class="text-center mt-5">PRODUCT MANAGEMENT SYSTEM</h1>
	<div class="container text-center ">
	
	</div>
	<div class="container my-5">
		<div class="card mx-auto" style="max-width: 400px;">
			<div class="card-header bg-primary text-white">
				<h4 class="card-title text-center">Welcome Admin...&#x1F60A</h4>
			</div>
			<div class="card-body">
				<form action="login" method="post">

					<div class="form-group">
						<label for="username">Username:</label> <input type="text"
							class="form-control" id="username" placeholder="Enter username"
							name="name">
					</div>

					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" placeholder="Enter password"
							name="password">
					</div>

					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary mr-2">Sign
							in</button>
						<button type="reset" class="btn btn-secondary">Reset</button>
					</div>
					
					<div class="container text-center text-denger">
					<p>${error }</p>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- Bootstrap JavaScript -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
