@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-8 bg-white border shadow-sm py-5">
                <h1 class="font-weight-bold">Post of title</h1>
                <p><span>02.10.2018</span> / <a href="#" class="badge">php</a><a href="#" class="badge">laravel</a></p>
                <p class="">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, aliquid atque cupiditate dicta dolor dolorem eaque error id magnam molestias nemo nulla quaerat quam quas quidem recusandae unde veritatis, vitae?
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur consequuntur, deserunt distinctio dolores eveniet facere facilis inventore labore laboriosam minus modi molestiae necessitatibus obcaecati quaerat quidem tempore unde, veniam voluptas?
                </p>
            </div>

            @include('tag.index')
        </div>
    </div>

@endsection