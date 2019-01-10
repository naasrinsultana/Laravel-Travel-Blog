<!DOCTYPE html>
<html lang="en">

<head>

    @extends('user/layouts/head')

</head>

<body>
@include('user/layouts/header')
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-8">
				<h1 class="my-4">@yield('sub-title')</h1>

				@section('main-content')
        		@show

			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">
				@yield('sidebar')
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->


{{--     @include('user/layouts/header')
   
      @section('main-content')
        @show

        Sidebar Widgets Column
        <div class="col-md-4">
          
          @yield('sidebar')          

        </div> --}}

    @include('user/layouts/footer')

</body>

</html>
