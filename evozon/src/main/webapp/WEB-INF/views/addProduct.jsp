<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Add Product</title>
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

									<div class="col-xl-7 col-lg-7 col-md-7">
										<div class="text-center">
											<h1 class="h2">Add new product</h1>


											<hr>
											<form:form method="POST" action="/EvozonTest/addProduct"
												modelAttribute="product">
												<div class="form-group row align-items-center">
													<form:label class="col-3" path="name">Name</form:label>
													<form:input class="form-control col" type="text"
														placeholder="Enter product name" path="name" />
												</div>
												<div class="form-group row align-items-center">
													<form:label class="col-3" path="code">Code</form:label>
													<form:input class="form-control col" type="text"
														placeholder="Enter product code" path="code" />
												</div>
												<div class="form-group row align-items-center">
													<form:label class="col-3" path="category">Category</form:label>
													<form:select class="form-control col" path="category">
														<c:forEach items="${categories}" var="category">
															<option value="${category.id}">${category.name}</option>
														</c:forEach>
													</form:select>
												</div>
												<div class="form-group row align-items-center">
													<input class="btn btn-lg btn-block btn-primary"
														role="button" type="submit" value="Create product" />
												</div>
											</form:form>
										</div>
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

	<!-- Optional Vendor Scripts (Remove the plugin script here and comment initializer script out of index.js if site does not use that feature) -->

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