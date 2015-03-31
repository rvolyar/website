<html>
	<head>
		@include('includes.head')

		<!--$title should be set in the routing file, but it has a default-->
		{{ $title or 'Charles T. King' }}
	</head>

	<body>
		@include('includes.navbar')

		<div class="container">
			@yield('content')
		</div>

		@include('includes.footer')
	</body>
</html>