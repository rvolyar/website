@extends('partials.menu')

<!DOCTYPE html>
<html>
	<head>
		<title>Charles T. King</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="index.css"/>
	</head>

	<body>
		@yield("navbar")
		
		<div class="container-fluid">
			@yield('content')
		</div>
	</body>
</html>