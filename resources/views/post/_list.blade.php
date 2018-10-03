@foreach($posts as $post)

    <div class="card w-100 mb-3 shadow-sm">
        <div class="card-body">
            <h2 class="card-title font-weight-bold h1">{{ $post->name }}</h2>
            <h6 class="card-subtitle mb-2 text-muted"><span>{{ $post->created_at }}</span> / 
                @foreach($post->tags as $tag)
                    <a href="{{ route('tag.show', $tag->id) }}" class="badge">{{ $tag->name }}</a>
                @endforeach
            </h6>
            <div class="card-text">{!! str_limit($post->content, 400, '...') !!}</div>
            <div class="card-body">
                <a href="{{ route('post.show', $post->id) }}" class="card-link">Читать далее</a>
            </div>
            @if(Auth::user() && Auth::user()->admin)
                <div class="card-body">
                    <a href="{{ route('post.edit', $post->id) }}" class="card-link btn btn-warning">Редактировать</a>
                    <a href="{{ route('post.destroy', $post->id) }}" onclick="event.preventDefault(); document.getElementById('delete-post-{{ $post->id }}').submit()" class="card-link btn btn-danger">Удалить</a>
                    <form class="d-none" id="delete-post-{{ $post->id }}" action="{{ route('post.destroy', $post->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                    </form>
                </div>
            @endif
        </div>
    </div>

@endforeach

{{ $posts->links() }}