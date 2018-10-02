@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row my-3 justify-content-center">
            <h1 class="font-weight-bold">TAG</h1>
        </div>

        <div class="row">
            <div class="col-8">
                @include('post._list')
            </div>

            @include('tag.index')
        </div>
    </div>

@endsection