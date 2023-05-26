<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="./bootstrap.jsp"%>
<%@include file="./Navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>

</head>
<body>

	<div class="container mt-3">

		<div class="col-md-12">

			<h1 class="text-center mb-3">Welcome to Available Products...!</h1>


			<table class="table">
				<thead class="thead bg-warning table-bordered">
					<tr>
						<th scope="col">Product Id</th>
						<th scope="col">Product Name</th>
						<th scope="col">Product Description</th>
						<th scope="col">Product Price</th>
					</tr>
				</thead>
				<tbody class="bg-light">

					<c:if test="${not empty product}">
						<tr>
							<th scope="row">product_${product.id }</th>
							<td>${product.name }</td>
							<td>${product.description }</td>
							<td>${product.price }</td>
						</tr>
					</c:if>

					<c:if test="${empty product}">
						<tr>
							<td colspan="4" class="text-center">No products found.</td>
						</tr>
					</c:if>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>
