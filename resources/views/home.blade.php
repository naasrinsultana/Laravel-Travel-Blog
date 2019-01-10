@extends('user/app')

@section('bg-img', asset('user/img/contact-bg.jpg'))

@section('head')
@endsection

@section('title', 'Welcome to Home')
@section('sub-heading', 'This is your travel page')

@section('main-content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Home</div>

                <div class="panel-body">
                    <h3>Welcome to Travel Blog</h3>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer')

@endsection

