<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="btn btn-outline-success" href="index2">Product
		Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index2">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="add">Add
					Product</a></li>

			<li class="nav-item"><a class="nav-link" href="remove">Remove
					Product</a></li>

			<li class="nav-item"><a class="nav-link" href="update">Update
					Product</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0"
			action="${pageContext.request.contextPath }/search">
			<input class="form-control mr-sm-2 bg-light" type="number"
				placeholder="Enter product Id to Search" aria-label="Search"
				name="query">

			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			<a class="btn btn-outline-danger mx-2 " href="logout">Logout</a>
		</form>
	</div>
</nav>