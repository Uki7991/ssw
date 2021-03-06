@extends('layouts.app')

@section('content')

    <div class="container border my-4 bg-white shadow-sm">
        <div class="row justify-content-center py-3">
            <h1>Добавление новости</h1>
        </div>
        <div class="row justify-content-center">
            <div class="col-10">
                <form action="{{ route('post.update', $post->id) }}" method="POST" class="form">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label for="name_of_post">Тема статьи</label>
                        <input name="name" type="text" id="name_of_post" class="form-control w-75 {{ $errors->has('name') ? 'is-invalid' : '' }}" value="{{ $post->name }}" placeholder="Введите тему статьи">
                        @if($errors->has('name'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('name') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label class="col-12 px-0" for="tags_of_post">Теги статьи</label>
                        <select name="tags[]" id="tags_of_post" class="form-control w-75 {{ $errors->has('tags') ? 'is-invalid' : '' }}"  multiple>
                            @foreach($tags as $tag)
                                <option value="{{ $tag->slug }}" {{ $post->tags->where('id', $tag->id)->first() ? 'selected' : '' }}>{{ $tag->name }}</option>
                            @endforeach
                        </select>
                        @if($errors->has('tags'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('tags') }}</strong>
                            </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="content_of_post">Текст статьи</label>
                        <textarea name="content" class="form-control {{ $errors->has('content') ? 'is-invalid' : '' }}" id="content_of_post" cols="30" rows="10" required>
                            {{ $post->content }}
                        </textarea>
                        @if($errors->has('content'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('content') }}</strong>
                            </span>
                        @endif
                    </div>
                    <button type="submit">Редактировать</button>
                </form>
            </div>
        </div>
    </div>

@endsection

@push('scripts')
    <script src="{{ asset('js/select2.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#tags_of_post').select2({
                tags: true
            });
            $('#tags_of_post').on('select2:select', function (e) {
                var data = e.params.data;
                console.log(data);
            });
        });
    </script>
    <script src='https://cloud.tinymce.com/stable/tinymce.min.js'></script>
    <script>
        tinymce.init({
            selector: '#content_of_post'
        });
    </script>
@endpush