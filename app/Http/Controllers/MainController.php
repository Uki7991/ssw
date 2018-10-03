<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Tag;

class MainController extends Controller
{
    /**
     * Return view for home page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $bigTag = Tag::findBigTag();

    	return view('welcome', [
    		'posts' => Post::all()->sortByDesc('created_at')->paginate(5),
    		'tags' => Tag::withCount('posts')->get(),
            'bigTag' => $bigTag,
    	]);
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function about()
    {
        return view('about');
    }
}
