@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-8">
                @include('post._list')
            </div>
            @include('tag.index')
        </div>
    </div>

@endsection