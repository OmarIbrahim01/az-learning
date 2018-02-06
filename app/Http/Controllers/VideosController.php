<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;
use App\Video;
use App\History;
use Auth;


class VideosController extends Controller
{

	public function __construct()
  {
      $this->middleware(['auth', 'subscribed']); //apply middleware to all methods of this controller
  }

  public function show($course_name, $video_name)
    {
    	$course_id = Course::select('id')->where('name', $course_name)->first();
    	$course = Course::findOrfail($course_id->id);
    	$video = $course->videos->where('name', $video_name)->first();

      $history = new History;
      $history->user_id = Auth::id();
      $history->video_id = $video->id;
      $history->save();

    	return view('videos.show')->withVideo($video)->withCourse($course);
    }
}
