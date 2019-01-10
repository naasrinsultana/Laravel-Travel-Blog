@extends('admin.layouts.app')

@section('main-content')

	  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Text Editors
        <small>Advanced form element</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Editors</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">

          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Add New Roles</h3>

              @include('includes.messages')
              
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="{{ route('role.store') }}" method="post">
              {{ csrf_field() }}
              <div class="box-body">
              <div class="col-lg-offset-2 col-lg-8">
                <div class="form-group">
                  <label for="role">Role Title</label>
                  <input type="text" class="form-control" id="role" name="name" placeholder="Role Title">
                </div>

	             <div class="form-group">
	              <input type="submit" class="btn btn-primary">
	              <a href='{{ route('role.index') }}' class="btn btn-warning">Back</a>
	            </div>                
              </div>         
          </div>
        </div>
       </form>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

@endsection