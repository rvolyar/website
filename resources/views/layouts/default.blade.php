<!DOCTYPE html>

<!--To use this layout, use this syntax: 
@extends('layouts.default')

@section('content')
	THIS IS WHERE THE CONTENT GOES
@stop

-->

<html>
	<head>
		@include('includes.head')
		
		<!--$title should be set in the routing file, but it has a default-->
		{{ $title or 'Charles T. King' }}
	</head>

	<body>
		@include("includes.navbar")
		
		<div class="container">
			@yield('content')
		</div>
		
		@include('includes.footer')
	</body>
</html>