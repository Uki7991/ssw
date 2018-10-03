@foreach($tags as $tag)
	<a href="{{ route('tag.show', $tag->id) }}" class="text-capitalize" style="font-size: {{ $tag->posts_count > 0 ? ($tag->posts_count / $bigTag->posts->count()) * (180 - 80) + 80 : '' }}%;">{{ $tag->name }}</a>
@endforeach