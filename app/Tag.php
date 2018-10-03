<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $guarded = [];

    public static function findBigTag()
    {
        return Tag::all()->sortByDesc(function ($tag, $key) {
            return $tag->posts->count();
        })->first();
    }

    public static function addTagsToPost($tags, Post $post)
    {
        foreach ($tags as $index => $tagName) {
            $tag = Tag::where('slug', str_slug($tagName))->first();

            if ($tag) {
                if (!$post->tags->where('id', $tag->id)->first()) {
                    $post->tags()->attach($tag->id);
                }
            } else {
                $tag = new Tag(['name' => $tagName, 'slug' => str_slug($tagName)]);
                $tag->save();

                $post->tags()->attach($tag->id);
            }
        }
    }

    public function posts()
    {
        return $this->belongsToMany('App\Post');
    }
}
