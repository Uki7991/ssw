@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-8 bg-white border shadow-sm py-5">
                <h1 class="font-weight-bold">{{ $post->name }}</h1>
                <p><span>{{ $post->created_at }}</span> / 
                    @foreach($post->tags as $tag)
                        <a href="{{ route('tag.show', $tag->id) }}" class="badge">{{ $tag->name }}</a>
                    @endforeach
                </p>
                <p class="">
                    {!! $post->content !!}
                </p>
            </div>

            @include('tag.index')
        </div>
    </div>

@endsection