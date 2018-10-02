@if(Auth::user() && Auth::user()->admin)
    <div class="row justify-content-end">
        <div class="col-auto">
            <a href="{{ route('post.create') }}" class="btn btn-primary">Добавить новость</a>
        </div>
    </div>
@endif