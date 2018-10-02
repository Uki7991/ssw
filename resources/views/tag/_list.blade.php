@foreach($tags as $tag)
	<a href="{{ route('tag.show', $tag->id) }}" class="text-capitalize" style="font-size: 12px;">{{ $tag->name }}</a>	
@endforeach