@extends('layouts.app')

@section('content')

    <div class="container">        
        <div class="row my-3 justify-content-center">
            <h1 class="font-weight-bold">{{ $tag->name }}</h1>
        </div>

        @include('_partials._create_post_button')

        <div class="row">
            <div class="col-8">
                @include('post._list', ['posts' => $tag->posts->sortByDesc('created_at')])
            </div>

            @include('tag.index')
        </div>
    </div>

@endsection