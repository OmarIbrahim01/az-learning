@extends('layouts.main')

@section('breadcrumbs')
<div id="heading-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1>Library</h1>
            </div>
            <div class="col-md-5">
                <ul class="breadcrumb">
                    <li><a href="/">Library</a>
                    </li>
                    <li>All Courses</li>
                </ul>

            </div>
        </div>
    </div>
</div>
@stop

@section('content')
<div id="content">
    <div class="container">
        <h3>Library</h3>
        <p class="text-muted lead text-left">These are all the Courses we offer.</p>

        <div class="row products">
            <div class="col-sm-10">

                @foreach($courses as $course)
                <div class="col-md-3 col-sm-4">
                    <div class="product">
                        <div class="image">
                            <a href="{{route('courses.show', $course->name)}}">
                                <img src="/storage/courses/{{$course->name}}/{{$course->image_url}}" alt="" class="img-responsive image1">
                            </a>
                        </div>
                        <!-- /.image -->
                        <div class="text text-left">
                            <h3 style="height: 30px; margin-bottom: 0; */"><a href="shop-detail.html">{{$course->name}}</a></h3>
                            <p>{!! substr($course->description, 0, 63) !!}....</p>
                        </div>
                        <!-- /.text -->
                    </div>
                    <!-- /.product -->
                </div>
                <!-- /.col-md-4 -->
                @endforeach

                
            </div>

            <div class="col-sm-2">

                <!-- *** MENUS AND FILTERS ***
_________________________________________________________ -->
                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title" style="padding-right: 110px;">Categories</h3>
                    </div>

                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked category-menu">
                            <li>
                                <a href="{{route('library.index')}}">All Courses</a>
                                <ul>
                                    @foreach($categories as $category)
                                    <li>
                                        <a href="{{route('library.category', $category->name)}}">{{$category->name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- *** MENUS AND FILTERS END *** -->

            </div>
            <!-- /.col-md-3 -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->
</div>
@stop