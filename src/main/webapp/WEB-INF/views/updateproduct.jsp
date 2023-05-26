<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product Page</title>
<%@include file="./bootstrap.jsp"%>
<%@include file="./Navbar.jsp"%>
<style>
body {
	background-color: #80cbc4;
}
</style>
</head>
<body>
	<h1 class="container text-center mt-3">PLEASE UPDATE PRODUCT
		DETAILS</h1>

	<div class="container mt-4">

		<form action="${pageContext.request.contextPath }/view" method="post">
		
		<div class="form-group ">
				<label for="title"><h5>Product Id</h5></label> <input
					type="text" 
					class="form-control text-dark" 
					id="id" 
					name="id"
					value="${product.id }"
					style="width: 10%; text-align: center;"
					readonly="readonly" />
			</div>
			<div class="form-group text-center">
				<label for="title"><h5>Enter Product Name</h5></label> <input
					type="text" 
					class="form-control text-dark" 
					id="title" 
					name="name"
					placeholder="Enter Name Of Product...!" 
					required="required"
					value="${product.name }" />
			</div>
			<div class="form-group text-center">
				<label for="content"><h5>Product Description</h5></label>
				<textarea id="content"
					placeholder="Enter Product Description Here....!"
					class="form-control text-dark" 
					style="height: 130px"
					required="required" 
					name="description">${product.description }</textarea>
			</div>
			<div class="form-group text-center">
				<label for="title"><h5>Enter Product Price</h5></label> <input
					type="text" class="form-control text-dark" id="price" name="price"
					placeholder="Enter Price Of Product...!" required="required"
					value="${product.price }" />
			</div>

			<div class="container text-center ">
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-outline-danger mx-2 bg-danger" style="color: white;">BACK</a>
				<button type="submit" class="btn btn-primary">UPDATE</button>
				<button type="reset" class="btn btn-success mx-2">RESET</button>
			</div>
		</form>
	</div>
</body>
</html>