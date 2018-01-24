<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;
use App\Category;

class LibraryController extends Controller
{
    public function index()
    {
    	$courses = Course::all();
    	return view('library.index')->withCourses($courses);
    }

     public function category($name)
    {
    	$category = Category::select('id')->where('name', $name)->first();
    	$courses = Course::all()->where('category_id', $category->id);
    	return view('library.index')->withCourses($courses);
    }
}
