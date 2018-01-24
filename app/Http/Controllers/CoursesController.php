<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;

class CoursesController extends Controller
{
    public function show($name)
    {
    	$course_id = Course::select('id')->where('name', $name)->first();
    	$course = Course::findOrfail($course_id->id);
    	return view('courses.show')->withCourse($course);
    }
}
