@extends('admin.layouts.app')

@section('main-content')

	  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 944px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Home page
        <small>it all starts here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
            <!-- /.col -->

          <div class="col-md-4">
            <!-- USERS LIST -->
            <div class="box box-danger">
              <div class="box-header with-border">
                <h3 class="box-title">Latest Members</h3>

                <div class="box-tools pull-right">
                  <span class="label label-danger">8 New Members</span>
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body no-padding">
                <ul class="users-list clearfix">
                  <li>
                    <img src="dist/img/user1-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Alexander Pierce</a>
                    <span class="users-list-date">Today</span>
                  </li>
                  <li>
                    <img src="dist/img/user8-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Norman</a>
                    <span class="users-list-date">Yesterday</span>
                  </li>
                  <li>
                    <img src="dist/img/user7-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Jane</a>
                    <span class="users-list-date">12 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user6-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">John</a>
                    <span class="users-list-date">12 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user2-160x160.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Alexander</a>
                    <span class="users-list-date">13 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user5-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Sarah</a>
                    <span class="users-list-date">14 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user4-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Nora</a>
                    <span class="users-list-date">15 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user3-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Nadia</a>
                    <span class="users-list-date">15 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user6-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">John</a>
                    <span class="users-list-date">12 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user2-160x160.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Alexander</a>
                    <span class="users-list-date">13 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user5-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Sarah</a>
                    <span class="users-list-date">14 Jan</span>
                  </li>
                  <li>
                    <img src="dist/img/user4-128x128.jpg" alt="User Image">
                    <a class="users-list-name" href="#">Nora</a>
                    <span class="users-list-date">15 Jan</span>
                  </li>
                </ul>
                <!-- /.users-list -->
              </div>
              <!-- /.box-body -->
              <div class="box-footer text-center">
                <a href="javascript:void(0)" class="uppercase">View All Users</a>
              </div>
              <!-- /.box-footer -->
            </div>
            <!--/.box -->
          </div>
            <!-- /.col -->
          <!-- PRODUCT LIST -->
          <div class="col-md-8">
            <div class="box box-primary">
              <div class="box-header with-border">
                <h3 class="box-title">Recently Added Products</h3>

                <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <ul class="products-list product-list-in-box">
                  <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-50x50.gif" alt="Product Image">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">Samsung TV
                        <span class="label label-warning pull-right">$1800</span></a>
                          <span class="product-description">
                            Samsung 32" 1080p 60Hz LED Smart HDTV.
                          </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-50x50.gif" alt="Product Image">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">Bicycle
                        <span class="label label-info pull-right">$700</span></a>
                          <span class="product-description">
                            26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                          </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="dist/img/default-50x50.gif" alt="Product Image">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">PlayStation 4
                        <span class="label label-success pull-right">$399</span></a>
                          <span class="product-description">
                            PlayStation 4 500GB Console (PS4)
                          </span>
                    </div>
                  </li>
                  <!-- /.item -->
                </ul>
              </div>
              <!-- /.box-body -->
              <div class="box-footer text-center">
                <a href="javascript:void(0)" class="uppercase">View All Products</a>
              </div>
              <!-- /.box-footer -->
            </div>
          </div>

          <div class="col-md-8" style="padding-top: 0px;">
            <!-- TO DO List -->
            <div class="box box-primary">
              <div class="box-header">
                <i class="ion ion-clipboard"></i>

                <h3 class="box-title">To Do List</h3>

                <div class="box-tools pull-left">
                  <ul class="pagination pagination-sm inline">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <ul class="todo-list">
                  <li>
                    <!-- drag handle -->
                        <span class="handle">
                          <i class="fa fa-ellipsis-v"></i>
                          <i class="fa fa-ellipsis-v"></i>
                        </span>
                    <!-- checkbox -->
                    <input type="checkbox" value="">
                    <!-- todo text -->
                    <span class="text">Design a nice theme</span>
                    <!-- Emphasis label -->
                    <small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
                    <!-- General tools such as edit or delete-->
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                        <span class="handle">
                          <i class="fa fa-ellipsis-v"></i>
                          <i class="fa fa-ellipsis-v"></i>
                        </span>
                    <input type="checkbox" value="">
                    <span class="text">Make the theme responsive</span>
                    <small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                        <span class="handle">
                          <i class="fa fa-ellipsis-v"></i>
                          <i class="fa fa-ellipsis-v"></i>
                        </span>
                    <input type="checkbox" value="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                        <span class="handle">
                          <i class="fa fa-ellipsis-v"></i>
                          <i class="fa fa-ellipsis-v"></i>
                        </span>
                    <input type="checkbox" value="">
                    <span class="text">Check your messages and notifications</span>
                    <small class="label label-primary"><i class="fa fa-clock-o"></i> 1 week</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                        <span class="handle">
                          <i class="fa fa-ellipsis-v"></i>
                          <i class="fa fa-ellipsis-v"></i>
                        </span>
                    <input type="checkbox" value="">
                    <span class="text">Let theme shine like a star</span>
                    <small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
                    <div class="tools">
                      <i class="fa fa-edit"></i>
                      <i class="fa fa-trash-o"></i>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <!-- /.box -->            
          </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

@endsection