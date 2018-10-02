@extends('layouts.app')

@section('content')

    <div class="container">
        @include('_partials._create_post_button')
        <div class="row">
            <div class="col-8">
                @include('post._list')
            </div>
            @include('tag.index')
        </div>
    </div>

@endsection