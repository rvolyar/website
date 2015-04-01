<nav class="navbar navbar-default">
	<div class="container"> <!--Container so it can shrink on mobile -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img alt="Brand" id="nav-logo" src="images/favicon.png"/></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home<span class="sr-only">(current)</span></a>
				</li>
				<li><a href="application.html">Apply for a Loan</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Student Profile<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="student/profile.html">Full Student Profile</a></li>
						<li class="divider"></li>
						<li><a href="student/payments.html#remaining">Payments Remaining</a></li>
						<li><a href="student/payments.html#paid">Paid Payments</a></li>
						<li class="divider"></li>
						<li><a href="student/contact.html">Personal Contact Information</a>
						</li>
					</ul>
				</li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search the FAQ">
				</div>
				<button type="submit" class="btn btn-default">Search</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="admin.html">Admin</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Help<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="faq.html">Frequently Asked Questions</a></li>
						<li class="divider"></li>

						<li><a href="forum.html">Help Forum</a></li>
						<li><a href="mailto:charlestking.info@gmail.com">Email Us</a>
						</li>
					</ul>
				</li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>