@extends('layouts.main')

@section('breadcrumbs')
<div id="heading-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1>Category full</h1>
            </div>
            <div class="col-md-5">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li>Category full</li>
                </ul>

            </div>
        </div>
    </div>
</div>
@stop

@section('content')

<div id="content">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="heading">
                    <h2>Resume Previous Course</h2>
                </div>
            </div>
   
            <!-- *** LEFT COLUMN ***
     _________________________________________________________ -->

            <div class="col-md-12" id="blog-listing-medium">

                <section class="post">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="image">
                                <a href="blog-post.html">
                                    <img src="img/blog-medium.jpg" class="img-responsive" alt="Example blog post alt">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h2><a href="post.htmls">Fashion now</a></h2>
                            <div class="clearfix">
                                <p class="author-category">By <a href="#">John Snow</a> in <a href="blog.html">Webdesign</a>
                                </p>
                                <p class="date-comments">
                                    <a href="blog-post.html"><i class="fa fa-calendar-o"></i> June 20, 2013</a>
                                    <a href="blog-post.html"><i class="fa fa-comment-o"></i> 8 Comments</a>
                                </p>
                            </div>
                            <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            <p class="read-more"><a href="blog-post.html" class="btn btn-template-main">Continue reading</a>
                            </p>
                        </div>
                    </div>
                </section>

                

            </div>
            <!-- /.col-md-9 -->

            <!-- *** LEFT COLUMN END *** -->

            

        </div>
        <!-- /.row -->

        <div class="col-md-12">
            <div class="heading">
                <h2>We Also Recommend These Courses</h2>
            </div>
        </div>

        <div class="row products">
        <div class="col-sm-12">

           
            <div class="col-md-3 col-sm-4">
                <div class="product">
                    <div class="image">
                        <a href="#">
                            <img src="/img/course.jpg" alt="" class="img-responsive image1">
                        </a>
                    </div>
                    <!-- /.image -->
                    <div class="text text-left">
                        <h3 style="height: 30px; margin-bottom: 0; */"><a href="shop-detail.html">Course Name</a></h3>
                        <p>{!! substr('ieryhfgrigbyirbryuibergwergwergwergw', 0, 63) !!}....</p>
                    </div>
                    <!-- /.text -->
                </div>
                <!-- /.product -->
            </div>
            <!-- /.col-md-4 -->

            <div class="col-md-3 col-sm-4">
                <div class="product">
                    <div class="image">
                        <a href="#">
                            <img src="/img/course.jpg" alt="" class="img-responsive image1">
                        </a>
                    </div>
                    <!-- /.image -->
                    <div class="text text-left">
                        <h3 style="height: 30px; margin-bottom: 0; */"><a href="shop-detail.html">Course Name</a></h3>
                        <p>{!! substr('ieryhfgrigbyirbryuibergwergwergwergw', 0, 63) !!}....</p>
                    </div>
                    <!-- /.text -->
                </div>
                <!-- /.product -->
            </div>
            <!-- /.col-md-4 -->

            <div class="col-md-3 col-sm-4">
                <div class="product">
                    <div class="image">
                        <a href="#">
                            <img src="/img/course.jpg" alt="" class="img-responsive image1">
                        </a>
                    </div>
                    <!-- /.image -->
                    <div class="text text-left">
                        <h3 style="height: 30px; margin-bottom: 0; */"><a href="shop-detail.html">Course Name</a></h3>
                        <p>{!! substr('ieryhfgrigbyirbryuibergwergwergwergw', 0, 63) !!}....</p>
                    </div>
                    <!-- /.text -->
                </div>
                <!-- /.product -->
            </div>
            <!-- /.col-md-4 -->

            <div class="col-md-3 col-sm-4">
                <div class="product">
                    <div class="image">
                        <a href="#">
                            <img src="/img/course.jpg" alt="" class="img-responsive image1">
                        </a>
                    </div>
                    <!-- /.image -->
                    <div class="text text-left">
                        <h3 style="height: 30px; margin-bottom: 0; */"><a href="shop-detail.html">Course Name</a></h3>
                        <p>{!! substr('ieryhfgrigbyirbryuibergwergwergwergw', 0, 63) !!}....</p>
                    </div>
                    <!-- /.text -->
                </div>
                <!-- /.product -->
            </div>
            <!-- /.col-md-4 -->


           

            
        </div>

    </div>
    <!-- /.container -->
</div>
<!-- /#content -->


@stop