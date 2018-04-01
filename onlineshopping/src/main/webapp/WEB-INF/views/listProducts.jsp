<div id="heading-breadcrumbs">
	<div class="container">
		<div class="row d-flex align-items-center flex-wrap">
			<div class="col-md-7">
				<h1 class="h2">Category with left sidebar</h1>
			</div>
			<div class="col-md-5">
				<c:if test="${userClickAllProducts == true}">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">All Products</li>
					</ul>
				</c:if>
				<c:if test="${userClickCategoryProducts == true}">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">Category</li>
						<li class="breadcrumb-item active">${category.name}</li>
					</ul>
				</c:if>
			</div>
		</div>
	</div>
</div>
<div id="content">
	<div class="container">
		<div class="row bar">
			<div class="col-md-3">
				<!-- MENUS AND FILTERS-->
				<div class="panel panel-default sidebar-menu">
					<div class="panel-heading">
						<h3 class="h4 panel-title">Categories</h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills flex-column text-sm category-menu">
							<c:forEach items="${categories}" var="category">
								<li class="nav-item"><a id="a_${category.name}"
									href="${contextRoot}/${category.id}"
									class="nav-link d-flex align-items-center justify-content-between">${category.name}<span>
									</span><span class="badge badge-secondary">42</span></a>
									<ul class="nav nav-pills flex-column">
										<li class="nav-item"><a href="shop-category.html"
											class="nav-link">T-shirts</a></li>
										<li class="nav-item"><a href="shop-category.html"
											class="nav-link">Shirts</a></li>
										<li class="nav-item"><a href="shop-category.html"
											class="nav-link">Pants</a></li>
										<li class="nav-item"><a href="shop-category.html"
											class="nav-link">Accessories</a></li>
									</ul></li>
							</c:forEach>
					<!-- 	<li class="nav-item"><a href="shop-category.html"
								class="nav-link active d-flex align-items-center justify-content-between"><span>Ladies
								</span><span class="badge badge-light">123</span></a>
								<ul class="nav nav-pills flex-column">
									<li class="nav-item"><a href="shop-category.html"
										class="nav-link">T-shirts</a></li>
									<li class="nav-item"><a href="shop-category.html"
										class="nav-link">Skirts</a></li>
									<li class="nav-item"><a href="shop-category.html"
										class="nav-link">Pants</a></li>
									<li class="nav-item"><a href="shop-category.html"
										class="nav-link">Accessories</a></li>
								</ul></li>  -->
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-9">
				<p class="text-muted lead">In our Ladies department we offer
					wide selection of the best products we have found and carefully
					selected worldwide. Pellentesque habitant morbi tristique senectus
					net our.</p>
				<div class="col-lg-4 col-md-6">
					<div class="product">
						<div class="image">
							<a href="shop-detail.html"><img src="img/product1.jpg" alt=""
								class="img-fluid image1"></a>
						</div>
						<div class="text">
							<h3 class="h5">
								<a href="shop-detail.html">Fur coat with very but very very
									long name</a>
							</h3>
							<p class="price">$143.00</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="product">
						<div class="image">
							<a href="shop-detail.html"><img src="img/product2.jpg" alt=""
								class="img-fluid image1"></a>
						</div>
						<div class="text">
							<h3 class="h5">
								<a href="shop-detail.html">White Blouse Armani</a>
							</h3>
							<p class="price">
								<del>$280</del>
								$143.00
							</p>
						</div>
						<div class="ribbon-holder">
							<div class="ribbon sale">SALE</div>
							<div class="ribbon new">NEW</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="product">
						<div class="image">
							<a href="shop-detail.html"><img src="img/product3.jpg" alt=""
								class="img-fluid image1"></a>
						</div>
						<div class="text">
							<h3 class="h5">
								<a href="shop-detail.html">Black Blouse Versace</a>
							</h3>
							<p class="price">$143.00</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="product">
						<div class="image">
							<a href="shop-detail.html"><img src="img/product4.jpg" alt=""
								class="img-fluid image1"></a>
						</div>
						<div class="text">
							<h3 class="h5">
								<a href="shop-detail.html">Black Blouse Versace</a>
							</h3>
							<p class="price">$143.00</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="product">
						<div class="image">
							<a href="shop-detail.html"><img src="img/product3.jpg" alt=""
								class="img-fluid image1"></a>
						</div>
						<div class="text">
							<h3 class="h5">
								<a href="shop-detail.html">White Blouse Armani</a>
							</h3>
							<p class="price">
								<del>$280</del>
								$143.00
							</p>
						</div>
						<div class="ribbon-holder">
							<div class="ribbon sale">SALE</div>
							<div class="ribbon new">NEW</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="product">
						<div class="image">
							<a href="shop-detail.html"><img src="img/product4.jpg" alt=""
								class="img-fluid image1"></a>
						</div>
						<div class="text">
							<h3 class="h5">
								<a href="shop-detail.html">White Blouse Versace</a>
							</h3>
							<p class="price">$143.00</p>
						</div>
						<div class="ribbon-holder">
							<div class="ribbon new">NEW</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 banner mb-small">
					<a href="#"><img src="img/banner2.jpg" alt="" class="img-fluid"></a>
				</div>
			</div>
			<div class="pages">
				<p class="loadMore text-center">
					<a href="#" class="btn btn-template-outlined"><i
						class="fa fa-chevron-down"></i> Load more</a>
				</p>
				<nav aria-label="Page navigation example"
					class="d-flex justify-content-center">
					<ul class="pagination">
						<li class="page-item"><a href="#" class="page-link"> <i
								class="fa fa-angle-double-left"></i></a></li>
						<li class="page-item active"><a href="#" class="page-link">1</a></li>
						<li class="page-item"><a href="#" class="page-link">2</a></li>
						<li class="page-item"><a href="#" class="page-link">3</a></li>
						<li class="page-item"><a href="#" class="page-link">4</a></li>
						<li class="page-item"><a href="#" class="page-link">5</a></li>
						<li class="page-item"><a href="#" class="page-link"><i
								class="fa fa-angle-double-right"></i></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>