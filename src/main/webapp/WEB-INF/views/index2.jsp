<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="./bootstrap.jsp"%>
<%@include file="./Navbar.jsp"%>
<style>
body {
	background-color: #eeff41;
}
</style>
</head>
<body>
	<h1 class="text-center mt-5" style="font-size: 50px">Welcome To
		Product management System</h1>

	<div class="container mt-5">

		<div class="col-md-12">

			<div class="container text-center">
			
			<a class=" btn btn-secondary" href=""><h1>Available Products...!</h1></a>
			
			</div>
			<table class="table mt-3">
				<thead class="thead bg-warning table-bordered">
					<tr>
						<th scope="col">Product Id</th>
						<th scope="col">Product Name</th>
						<th scope="col">Product Description</th>
						<th scope="col">Product Price</th>
					</tr>
				</thead>
				<tbody class="bg-light">

					<c:forEach var="product" items="${product }">
						<tr>
							<td scope="row">product_${product.id }</td>
							<td>${product.name }</td>
							<td>${product.description }</td>
							<td class="font-weight-bold">&#8377; ${product.price }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>