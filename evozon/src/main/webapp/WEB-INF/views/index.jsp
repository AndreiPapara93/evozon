
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Product List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>

<link href="<c:url value="/resources/img/favicon.png" />" rel="icon"
	type="image/x-icon">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1"
	rel="stylesheet">
<link href="<c:url value="/resources/css/theme.css" />" rel="stylesheet"
	type="text/css" media="all" />
</head>

<body>

	<div class="layout layout-nav-side">
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
			<div class="collapse navbar-collapse flex-column"
				id="navbar-collapse">
				<ul class="navbar-nav d-lg-block">

					<li class="nav-item"><a class="nav-link" href="addProduct">Add
							new product</a></li>

					<li class="nav-item"><a class="nav-link" href="addProduct">Product
							list</a></li>


				</ul>
			</div>
		</div>

		<div class="main-container">

			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-11 col-xl-10">
						<br>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="projects"
								role="tabpanel" data-filter-list="content-list-body">
								<div class="content-list">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Products</h3>
										</div>
									</div>
									<!--end of content list head-->
									<div class="content-list-body row">


										<c:forEach items="${products}" var="product">
											<div class="col-lg-6">
												<div class="card card-project">
													<div class="card-body">
														<div class="card-title">
															<h5>${product.name}</h5>
														</div>

														<div class="card-meta d-flex justify-content-between">
															<div class="d-flex align-items-center">
																<span class="text-small">${product.code}</span>
															</div>
															<span class="text-small">${product.creationDate}</span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Required vendor scripts (Do not remove) -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.js"/>"></script>

	<!-- Autosize - resizes textarea inputs as user types -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/autosize.min.js" />"></script>
	<!-- Flatpickr (calendar/date/time picker UI) -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/flatpickr.min.js" />"></script>
	<!-- Prism - displays formatted code boxes -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/prism.js" />"></script>
	<!-- Shopify Draggable - drag, drop and sort items on page -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/draggable.bundle.legacy.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/swap-animation.js" />"></script>
	<!-- Dropzone - drag and drop files onto the page for uploading -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/dropzone.min.js" />"></script>
	<!-- List.js - filter list elements -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/list.min.js" />"></script>

	<!-- Required theme scripts (Do not remove) -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/theme.js" />"></script>

</body>

</html>