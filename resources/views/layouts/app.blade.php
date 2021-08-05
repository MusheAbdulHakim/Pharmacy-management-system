<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<meta name="csrf-token" content="{{ csrf_token() }}">
        <title>{{ucfirst(AppSettings::get('app_name', 'App'))}} - {{ucfirst($title ?? '')}}</title>
		<meta name="csrf-token" content="{{ csrf_token() }}">

		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="@if(!empty(AppSettings::get('logo'))) {{asset('storage/'.AppSettings::get('favicon'))}} @else{{asset('assets/img/favicon.png')}} @endif">

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">

		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="{{asset('assets/css/font-awesome.min.css')}}">
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="{{asset('assets/plugins/fontawesome/css/fontawesome.min.css')}}">
		<link rel="stylesheet" href="{{asset('assets/plugins/fontawesome/css/all.min.css')}}">

		<!-- Feathericon CSS -->
		<link rel="stylesheet" href="{{asset('assets/css/feathericon.min.css')}}">

		<!-- Snackbar CSS -->
		<link rel="stylesheet" href="{{asset('assets/plugins/snackbar/snackbar.min.css')}}">
		<!-- Toastr CSS -->
		<link rel="stylesheet" href="{{asset('assets/plugins/toastr/toastr.css')}}">
		<!-- Datatables css -->
		<link rel="stylesheet" href="{{asset('assets/plugins/DataTables/datatables.css')}}">

		<!-- Main CSS -->
		<link rel="stylesheet" href="{{asset('assets/css/style.css')}}">

		<!-- Custom css -->
		<link rel="stylesheet" href="{{asset('css/app.css')}}">


		<!-- page css -->
		@stack('page-css')

		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

    </head>
    <body>

		<!-- Main Wrapper -->
        <div class="main-wrapper">

			<!-- Header -->
            @include('includes.header')
			<!-- /Header -->

			<!-- Sidebar -->
            @include('includes.sidebar')
			<!-- /Sidebar -->

			<!-- Page Wrapper -->
            <div class="page-wrapper">

                <div class="content container-fluid">

					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							@stack('page-header')
						</div>
					</div>
					<!-- /Page Header -->
					@if ($errors->any())
						@foreach ($errors->all() as $error)
							<x-alerts.danger :error="$error" />
						@endforeach
					@endif

					@yield('content')

				</div>
			</div>
			<!-- /Page Wrapper -->

        </div>
		<!-- /Main Wrapper -->


    </body>
	<!-- jQuery -->
	<script src="{{asset('assets/js/jquery-3.2.1.min.js')}}"></script>

	<!-- Bootstrap Core JS -->
	<script src="{{asset('assets/js/popper.min.js')}}"></script>
	<script src="{{asset('assets/js/bootstrap.min.js')}}"></script>

	<!-- Slimscroll JS -->
	<script src="{{asset('assets/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>

	<!-- Snackbar Js -->
	<script src="{{asset('assets/plugins/snackbar/snackbar.min.js')}}"></script>

	<!-- Toastr Js -->
	<script src="{{asset('assets/plugins/toastr/toastr.min.js')}}"></script>

	<!-- Custom JS -->
	<script src="{{asset('assets/js/script.js')}}"></script>
	<script src="{{asset('js/app.js')}}"></script>
	<script src="{{asset('assets/js/datatables-customizer.js')}}"></script>

	<script>
		$(document).ready(function() {
			$('.select2').select2({
				placeholder: 'Select an option'
			});
		});
		@if(Session::has('message'))
			var type = "{{ Session::get('alert-type', 'info') }}";
			switch(type){
				case 'info':
					Snackbar.show({
						text: "{{ Session::get('message') }}",
						actionTextColor: '#fff',
						backgroundColor: '#2196f3'
					});
					break;

				case 'warning':
					Snackbar.show({
						text: "{{ Session::get('message') }}",
						pos: 'top-right',
						actionTextColor: '#fff',
						backgroundColor: '#e2a03f'
					});
					break;

				case 'success':
					Snackbar.show({
						text: "{{ Session::get('message') }}",
						pos: 'top-right',
						actionTextColor: '#fff',
						backgroundColor: '#8dbf42'
					});
					break;

				case 'danger':
					Snackbar.show({
						text: "{{ Session::get('message') }}",
						pos: 'top-right',
						actionTextColor: '#fff',
						backgroundColor: '#e7515a'
					});
					break;
			}
		@endif
	</script>
	<!-- Datatables js -->
	<script src="{{asset('assets/plugins/DataTables/datatables.min.js')}}"></script>
	<!-- page js -->
	@stack('page-js')

</html>


