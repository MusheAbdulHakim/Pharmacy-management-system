@props(['error'=>$error])

<div class="alert bg-danger alert-icon-left alert-arrow-left alert-dismissible mb-2" role="alert">
	<span class="alert-icon"><i class="la la-thumbs-o-down"></i></span>
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<strong>Oh snap!</strong> {{$error}}
</div>