@extends('layouts.app')

@section('content')

    <div class="container">
        @if(Auth::user() && Auth::user()->admin)
            <div class="row justify-content-end">
                <div class="col-auto">
                    <a href="{{ route('post.create') }}" class="btn btn-primary">Добавить новость</a>
                </div>
            </div>
        @endif
        <div class="row">
            <div class="col-8">
                @include('post._list')
            </div>
            @include('tag.index')
        </div>
    </div>

@endsection