<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Categories</title>
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

		<jsp:include page="left_side_menu.jsp" />

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
											<h3>Categories</h3>
										</div>
									</div>

									<div class="content-list-body row">

										<c:forEach items="${categories}" var="category">
											<div class="col-lg-6">
												<div class="card card-project">
													<div class="card-body">
														<div class="card-options">
															<a
																href="${pageContext.request.contextPath }/category/delete/${category.id }"
																onclick="return confirm('Are you sure?')">Delete</a>
														</div>
														<div class="card-title">
															<h5>${category.name}</h5>
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