<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Universal - ${title}</title>
<script>
	window.menu = ${title};
</script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="${css}/font-awesome.min.css">
<!-- Google fonts - Roboto-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<!-- Bootstrap Select-->
<link rel="stylesheet" href="${css}/bootstrap-select.min.css">
<!-- owl carousel-->
<link rel="stylesheet" href="${css}/owl.carousel.css">
<link rel="stylesheet" href="${css}/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="${css}/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="${css}/custom.css">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css">


<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="${img}/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="${img}/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="${img}/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${img}/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${img}/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${img}/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${img}/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="${img}/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${img}/apple-touch-icon-152x152.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>

<body>

	<div class="wrapper">

		<div id="all">

			<!-- ====== Top bar ====== -->
			<%@ include file="./shared/topbar.jsp"%>

			<!-- ====== Navbar Start ====== -->
			<%@ include file="./shared/navbar.jsp"%>

			<!-- ======= Page Content ====== -->
			<div class="content">

				<c:if test="${userClickHome == true}">
					<!-- Home Page Content -->
					<%@ include file="home.jsp"%>
				</c:if>

				<c:if test="${userClickBlog == true}">
					<!-- Blog Page Content -->
					<%@ include file="blog.jsp"%>
				</c:if>

				<c:if test="${userClickShop == true}">
					<!-- Shop Page Content -->
					<%@ include file="shop.jsp"%>
				</c:if>

				<c:if test="${userClickServices == true}">
					<!-- Services Page Content -->
					<%@ include file="services.jsp"%>
				</c:if>

				<c:if test="${userClickContact == true}">
					<!-- Contact Page Content -->
					<%@ include file="contact.jsp"%>
				</c:if>

			</div>
			<!-- ======= END Page Content ======= -->


			<!-- ====== Footer Bar ====== -->
			<%@ include file="./shared/footer.jsp"%>

		</div>
		<!-- Javascript files-->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/popper.min.js">
			
		</script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/jquery.cookie.js">
			
		</script>
		<script src="${js}/jquery.waypoints.min.js">
			
		</script>
		<script src="${js}/jquery.counterup.min.js">
			
		</script>
		<script src="${js}/owl.carousel.min.js"></script>
		<script src="${js}/owl.carousel2.thumbs.min.js"></script>
		<script src="${js}/jquery.parallax-1.1.3.js"></script>
		<script src="${js}/bootstrap-select.min.js"></script>
		<script src="${js}/jquery.scrollTo.min.js"></script>
		<script src="${js}/front.js"></script>
		<!-- My Custom Javascript file -->
		<script src="${js}/myCustomScript.js"></script>
	</div>

</body>

</html>
