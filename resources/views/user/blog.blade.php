@extends('user/app')

@section('bg-img', asset('user/img/home-bg.jpg'))

@section('title', 'Travelling Blog')
@section('sub-heading', 'A Clean Blog Theme by Start Bootstrap')


@section('main-content')
    <!-- Page Content -->
    <div class="container">

        <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <h1 class="my-4">The ultimate guide to backpacking in Bangladesh</h1>

          <!-- Blog Post -->
          <div class="card mb-4">
            @foreach($posts as $post)
              <div class="card-body post-preview">
                  <a href="{{ route('post', $post->slug) }}">
                    <h2 class="card-title">{{$post->title}}</h2>
                  </a>
                <div class="text-muted">
                  Posted on January 1, 2017 by
                  <a href="#">Nasrin Sultana</a>
                  {{ $post->created_at->diffForHumans() }}
                </div>
                <div class="card-end" style="border-bottom: 1px solid gray;">
                    <p class="card-text">{!! htmlspecialchars_decode($post->body) !!}</p>
                      
                    <a href="{{URL('post',$post->slug)}}" class="btn btn-info">Read More &rarr;</a><br>
                    </div>
              </div>
            @endforeach
          </div>

          <!-- Pagination -->
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              {{ $posts->links() }}
            </li>
          </ul>

        </div>

    </div>

    </div>
    <!-- /.container -->
    <hr>

@endsection

@section('sidebar')
  @include('user.layouts.sidebar')
@endsection   
