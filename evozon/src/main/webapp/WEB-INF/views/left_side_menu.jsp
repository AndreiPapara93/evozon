<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">

	<a class="navbar-brand" href="index"> <img alt="Pipeline"
		src="<c:url value="/resources/img/logo.png" />" />
	</a>
	<div class="d-flex align-items-center">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar-collapse" aria-controls="navbar-collapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="d-block d-lg-none ml-2">
			<div class="dropdown">
				<a href="#" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> </a>
			</div>
		</div>
	</div>
	<div class="collapse navbar-collapse flex-column" id="navbar-collapse">
		<ul class="navbar-nav d-lg-block">
			<li class="nav-item"><a class="nav-link" href="addProduct">Add
					Product</a></li>
			<li class="nav-item"><a class="nav-link" href="products">Products
			</a></li>
			<li class="nav-item"><a class="nav-link" href="addCategory">Add
					Category</a></li>
			<li class="nav-item"><a class="nav-link" href="categories">Categories</a></li>
		</ul>
	</div>
</div>