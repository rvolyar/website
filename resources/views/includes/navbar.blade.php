<nav class="navbar navbar-default">
	<div class="container"> <!--Container so it can shrink on mobile -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="{{ route('home') }}"><img alt="Brand" id="nav-logo" src="images/favicon.png"/></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="{{ Route::is('home') ? 'active' : ''}}"><a href="{{ route('home') }}">Home<span class="sr-only">(current)</span></a>
				</li>
				<li class="{{ Route::is('about') ? 'active' : ''}}"><a href="{{ route('about') }}">About</a>
				</li>
				<li class="{{ Route::is('contact') ? 'active' : ''}}"><a href="{{ route('contact') }}">Contact us</a>
				</li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>