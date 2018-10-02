@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-8">
                @include('post._list')
            </div>
            <div class="col my-5">
                <div class="sticky-top col-12 border bg-white shadow-sm" style="padding-top: 40px; padding-bottom: 40px;">
                    @include('tag._list')
                </div>
            </div>
        </div>
    </div>

@endsection