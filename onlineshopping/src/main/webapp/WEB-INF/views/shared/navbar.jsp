<!-- Login Modal>
<div id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="login-modalLabel" aria-hidden="true"
	class="modal fade">
	<div role="document" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 id="login-modalLabel" class="modal-title">Customer Login</h4>
				<button type="button" data-dismiss="modal" aria-label="Close"
					class="close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="customer-orders.html" method="post">
					<div class="form-group">
						<input id="email_modal" type="text" placeholder="email"
							class="form-control">
					</div>
					<div class="form-group">
						<input id="password_modal" type="password" placeholder="password"
							class="form-control">
					</div>
					<p class="text-center">
						<button class="btn btn-template-outlined">
							<i class="fa fa-sign-in"></i> Log in
						</button>
					</p>
				</form>
				<p class="text-center text-muted">Not registered yet?</p>
				<p class="text-center text-muted">
					<a href="customer-register.html"><strong>Register now</strong></a>!
					It is easy and done in 1 minute and gives you access to special
					discounts and much more!
				</p>
			</div>
		</div>
	</div>
</div>
<!-- Login modal end-->

<header class="nav-holder make-sticky">
	<div id="navbar" role="navigation" class="navbar navbar-expand-lg">
		<div class="container">
			<a href="${contextRoot}/" class="navbar-brand home"><img
				src="${img}/logo.png" alt="Universal logo"
				class="d-none d-md-inline-block"><img
				src="${img}/logo-small.png" alt="Universal logo"
				class="d-inline-block d-md-none"><span class="sr-only">Universal
					- go to homepage</span></a>
			<button type="button" data-toggle="collapse"
				data-target="#navigation"
				class="navbar-toggler btn-template-outlined">
				<span class="sr-only">Toggle navigation</span><i
					class="fa fa-align-justify"></i>
			</button>
			<div id="navigation" class="navbar-collapse collapse">
				<ul class="nav navbar-nav ml-auto">
					<li id="home"><a href="${contextRoot}/home">Home</a></li>
					<li id="shop" class="nav-item dropdown menu-large"><a href="${contextRoot}/shop">shop</a></li>
					<li id="blog" class="nav-item dropdown menu-large"><a
						href="${contextRoot}/blog" data-toggle="dropdown"
						class="dropdown-toggle">blog<b class="caret"></b></a>
						<ul class="dropdown-menu megamenu">
							<li>
								<div class="row">
									<div class="col-lg-6">
										<img src="${img}/template-easy-customize.png" alt=""
											class="img-fluid d-none d-lg-block">
									</div>
									<div class="col-lg-3 col-md-6">
										<h5>Shortcodes</h5>
										<ul class="list-unstyled mb-3">
											<li class="nav-item"><a href="template-accordions.html"
												class="nav-link">Accordions</a></li>
											<li class="nav-item"><a href="template-alerts.html"
												class="nav-link">Alerts</a></li>
											<li class="nav-item"><a href="template-buttons.html"
												class="nav-link">Buttons</a></li>
											<li class="nav-item"><a
												href="template-content-boxes.html" class="nav-link">Content
													boxes</a></li>
											<li class="nav-item"><a href="template-blocks.html"
												class="nav-link">Horizontal blocks</a></li>
											<li class="nav-item"><a href="template-pagination.html"
												class="nav-link">Pagination</a></li>
											<li class="nav-item"><a href="template-tabs.html"
												class="nav-link">Tabs</a></li>
											<li class="nav-item"><a href="template-typography.html"
												class="nav-link">Typography</a></li>
										</ul>
									</div>
									<div class="col-lg-3 col-md-6">
										s
										<h5>Header variations</h5>
										<ul class="list-unstyled mb-3">
											<li class="nav-item"><a
												href="template-header-default.html" class="nav-link">Default
													sticky header</a></li>
											<li class="nav-item"><a
												href="template-header-nosticky.html" class="nav-link">No
													sticky header</a></li>
											<li class="nav-item"><a
												href="template-header-light.html" class="nav-link">Light
													header</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul></li>
					<!-- ========== FULL WIDTH MEGAMENU ==================-->
					<li id="services" class="nav-item dropdown menu-large"><a
						href="${contextRoot}/services" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200" class="dropdown-toggle">services<b
							class="caret"></b></a>
						<ul class="dropdown-menu megamenu">
							<li>
								<div class="row">
									<div class="col-lg-6">
										<img src="${img}/template-homepage.png" alt=""
											class="img-fluid d-none d-lg-block">
									</div>
									<div class="col-lg-3 col-md-6">
										<h5>Portfolio</h5>
										<ul class="list-unstyled mb-3">
											<li class="nav-item"><a href="portfolio-2.html"
												class="nav-link">2 columns</a></li>
											<li class="nav-item"><a href="portfolio-no-space-2.html"
												class="nav-link">2 columns with negative space</a></li>
											<li class="nav-item"><a href="portfolio-3.html"
												class="nav-link">3 columns</a></li>
											<li class="nav-item"><a href="portfolio-no-space-3.html"
												class="nav-link">3 columns with negative space</a></li>
											<li class="nav-item"><a href="portfolio-4.html"
												class="nav-link">4 columns</a></li>
											<li class="nav-item"><a href="portfolio-no-space-4.html"
												class="nav-link">4 columns with negative space</a></li>
											<li class="nav-item"><a href="portfolio-detail.html"
												class="nav-link">Portfolio - detail</a></li>
											<li class="nav-item"><a href="portfolio-detail-2.html"
												class="nav-link">Portfolio - detail 2</a></li>
										</ul>
									</div>
									<div class="col-lg-3 col-md-6">
										<h5>About</h5>
										<ul class="list-unstyled mb-3">
											<li class="nav-item"><a href="about.html"
												class="nav-link">About us</a></li>
											<li class="nav-item"><a href="team.html"
												class="nav-link">Our team</a></li>
											<li class="nav-item"><a href="team-member.html"
												class="nav-link">Team member</a></li>
											<li class="nav-item"><a href="services.html"
												class="nav-link">Services</a></li>
										</ul>
										<h5>Marketing</h5>
										<ul class="list-unstyled">
											<li class="nav-item"><a href="packages.html"
												class="nav-link">Packages</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul></li>
					<!-- ========== FULL WIDTH MEGAMENU END ==================-->
					<!-- ========== Contact dropdown ==================-->
					<li id="contact" class="nav-item dropdown menu-large"><a
						href="${contextRoot}/contact">Contact Us</a></li>
					<!-- ========== Contact dropdown end ==================-->
				</ul>
			</div>
			<div id="search" class="collapse clearfix">
				<form role="search" class="navbar-form">
					<div class="input-group">
						<input type="text" placeholder="Search" class="form-control"><span
							class="input-group-btn">
							<button type="submit" class="btn btn-template-main">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
</header>
<!-- Navbar End-->
