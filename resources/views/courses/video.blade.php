@extends('layouts.main')

@section('css')
<link href="http://vjs.zencdn.net/6.6.0/video-js.css" rel="stylesheet">
@stop

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
    <div class="container" style="padding-bottom: 115px;">

        <div class="row">
            <div class="col-md-12">
                <div class="heading">
                    <h2>Video Name</h2>
                </div>
            </div>
        </div>
        <div class="row portfolio-project">

            <section>

                <div class="col-sm-8">
                    <video id="my-video" class="video-js vjs-big-play-centered" controls preload="auto" height="500" style="margin: 0 auto; width: 100%;" 
                      poster="MY_VIDEO_POSTER.jpg" data-setup="{}" >
                        <source src="/storage/videos/trailer.MP4" type='video/mp4'>
                        <source src="MY_VIDEO.webm" type='video/webm'>
                        <p class="vjs-no-js">
                          To view this video please enable JavaScript, and consider upgrading to a web browser that
                          <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
                        </p>
                    </video>
                    <section>

                        

                            <div class="heading">
                                <h3>Teacher's Notes</h3>
                                <button type="button" class="btn btn-lg btn-template-main" style="float: right; margin-top: 20px;">Next</button>
                                <button type="button" class="btn btn-lg btn-template-main" style="float: right; margin-top: 20px;">Prev.</button>
                            </div>

                            <p>Bringing unlocked me an striking ye perceive. Mr by wound hours oh happy. Me in resolution pianoforte continuing we. Most my no spot felt by no. He he in forfeited furniture sweetness he arranging. Me tedious so to behaved
                                written account ferrars moments. Too objection for elsewhere her preferred allowance her. Marianne shutters mr steepest to me. Up mr ignorant produced distance although is sociable blessing. Ham whom call all lain like.</p>

                            <p>To sorry world an at do spoil along. Incommode he depending do frankness remainder to. Edward day almost active him friend thirty piqued. People as period twenty my extent as. Set was better abroad ham plenty secure had horses.
                                Admiration has sir decisively excellence say everything inhabiting acceptance. Sooner settle add put you sudden him.</p>
                        
                    </section>
                </div>

                <div class="col-sm-4">
                    <!-- *** MENUS AND FILTERS ***
_________________________________________________________ -->
                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title" style="padding-right: 50%;">Videos</h3>
                    </div>

                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked category-menu">
                            <li>
                                @foreach($course->videos->sortBy('order') as $video)
                                <a href="{{route('video.show', [$course->name, $video->name])}}"><i class="fa fa-play" aria-hidden="true"></i> {{$video->name}} - {{$course->name}}</a>
                                @endforeach
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- *** MENUS AND FILTERS END *** -->
                </div>

            </section>

            

        </div>

        

    </div>
    <!-- /.container -->


</div>
<!-- /#content -->

@stop