<!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-12">
                  <ul class="list-unstyled mb-0">
                    @foreach($post->categories as $category)
                        <li>
                          <a href="{{ route('category', $category->slug) }}">{{ $category->name }}</a>
                        </li>
                      @endforeach
{{--                       <li><a href="#">The Package Holiday</a></li>
                      <li><a href="#">AnotherThe Group Tour</a></li>
                      <li><a href="#">The Caravan/RV Road Trip</a></li>
                      <li><a href="#">Volunteer Travel</a></li>
                      <li><a href="#">Long Term Slow Travel</a></li>
                      <li><a href="#">The Gap Year</a></li>
                      <li><a href="#">Visiting Friends or Relatives</a></li>
                      <li><a href="#">Event Travel</a></li>
                      <li><a href="#">Business Travel</a></li> --}}
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="card my-4">
            <h5 class="card-header">Tags</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-12">
                  <ul class="list-unstyled mb-0">
                    @foreach($post->tags as $tag)
                      <li>
                        <a href="{{ route('tag', $tag->slug) }}">{{ $tag->name }}</a>
                      </li>
                    @endforeach 
                  </ul>
                </div>
              </div>
            </div>
          </div>          

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">About Us</h5>
            <div class="card-body">
              <img src="https://s23886.pcdn.co/wp-content/uploads/2018/09/DanielNoll_AudreyScott_UncorneredMarket.jpg" alt="About Daniel Noll and Audrey Scott" style="width: 334px;">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div>
          <div class="card my-4">
            <h5 class="card-header">Travel Resources</h5>
            <div class="card-body">
              <img src="https://s23886.pcdn.co/wp-content/uploads/2015/11/World_Travel_Resources.jpg" class="aligncenter" height="178" alt="“Travel" guides”="" style="width: 334px;">
            </div>
          </div>



  <div class="card my-4 widget-wrap">
    <h4 class="card-header">Most Popular Articles</h4>
  <article class="card-body">
      <img width="100" height="100" src="https://s23886.pcdn.co/wp-content/uploads/2014/02/Trekking_Packing_list-100x100.jpg" class="entry-image attachment-post" alt="How to Pack For A Trek: The Ultimate Hiking Packing List" itemprop="image" srcset="https://s23886.pcdn.co/wp-content/uploads/2014/02/Trekking_Packing_list-100x100.jpg 100w, https://s23886.pcdn.co/wp-content/uploads/2014/02/Trekking_Packing_list-150x150.jpg 150w, https://s23886.pcdn.co/wp-content/uploads/2014/02/Trekking_Packing_list-120x120.jpg 120w" sizes="(max-width: 100px) 100vw, 100px">
    <header class="entry-header">
        <h2 class="entry-title" itemprop="headline">
          <a href="https://uncorneredmarket.com/how-to-pack-for-a-trek/">How to Pack For A Trek: The Ultimate Hiking Packing List</a>
        </h2>
    </header>
  </article>
</div>
