@extends('user/app')

@section('bg-img', Storage::disk('local')->url($post->image))

@section('head')
  <link rel="stylesheet" href="{{ asset('user/css/prism.css') }}">
@endsection

@section('title', 'Travelling Post')
@section('sub-heading', 'A Clean Blog Theme by Start Bootstrap')

@section('main-content')

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=586825005110071&autoLogAppEvents=1';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>

	<!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                  <small>Created at {{ $post->created_at->diffForHumans() }}</small>
                  @foreach($post->categories as $category)
                  <small class="pull-right" style="margin-right: 20px;">
                    <a href="{{ route('category', $category->slug) }}">{{ $category->name.' / ' }}</a>
                  </small>
                    {!! htmlspecialchars_decode($post->body) !!}                  
                  @endforeach

                    {{-- Tag clouds --}}
                  <h3>Tag Clouds</h3>
                  @foreach($post->tags as $tag)
                  <a href="{{ route('tag', $tag->slug) }}">
                    <small class="pull-left" style="margin-right: 20px; border-radius: 5px; border: 1px solid gray; padding: 5px; ">
                      {{ $tag->name }}
                    </small>                    
                  </a>

                  @endforeach                    
                </div>

<div class="fb-comments" data-href="{{ Request::url() }}" data-numposts="5"></div>

@section('sidebar')
  @include('user.layouts.sidebar')
@endsection
            </div>
        </div>
    </article>

    <hr>

@endsection

@section('footer')
  <link rel="stylesheet" href="{{ asset('user/js/prism.js') }}">

@endsection
