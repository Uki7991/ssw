<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Tag;

class MainController extends Controller
{
    public function index()
    {
    	return view('welcome', [
    		'posts' => Post::all()->sortByDesc('created_at'),
    		'tags' => Tag::all(),
    	]);
    }
}
