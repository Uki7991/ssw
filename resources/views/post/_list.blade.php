@foreach($posts as $post)

    <div class="card w-100 mb-3 shadow-sm">
        <div class="card-body">
            <h2 class="card-title font-weight-bold h1">{{ $post->name }}</h2>
            <h6 class="card-subtitle mb-2 text-muted"><span>{{ $post->created_at }}</span> / 
                @foreach($post->tags as $tag)
                    <a href="/tag/show" class="badge">{{ $tag->name }}</a>
                @endforeach
            </h6>
            <div class="card-text">{!! str_limit($post->content, 400, '...') !!}</div>
            <div class="card-body">
                <a href="{{ route('post.show', $post->id) }}" class="card-link">Читать далее</a>
            </div>
        </div>
    </div>

@endforeach

{{ $posts->links() }}