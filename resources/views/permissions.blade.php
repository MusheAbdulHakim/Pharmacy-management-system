@extends('layouts.app')

@push('page-css')
	<!-- Select2 CSS -->
	<link rel="stylesheet" href="{{asset('assets/plugins/select2/css/select2.min.css')}}">
@endpush

@push('page-header')
<div class="col-sm-7 col-auto">
	<h3 class="page-title">Permissions</h3>
	<ul class="breadcrumb">
		<li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
		<li class="breadcrumb-item active">Permissions</li>
	</ul>
</div>
<div class="col-sm-5 col">
	<a href="#add_permission" data-toggle="modal" class="btn btn-primary float-right mt-2">Add Permission</a>
</div>

@endpush

@section('content')

<div class="row">
	<div class="col-sm-12">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<table id="perm-table" class="datatable table table-striped table-bordered table-hover table-center mb-0">
						<thead>
							<tr style="boder:1px solid black;">
								<th>Name</th>
								<th>Created date</th>
								<th class="text-center action-btn">Actions</th>
							</tr>
						</thead>
						<tbody>
							@foreach ($permissions as $permission)
							<tr>								
								<td>
									{{$permission->name}}
								</td>
								
								<td>{{date_format(date_create($permission->created_at),"d M,Y")}}</td>

								<td class="text-center">
									<div class="actions">
										@can('update-permission')
										<a data-id="{{$permission->id}}" data-permission="{{$permission->name}}" class="btn btn-sm bg-success-light editbtn" data-toggle="modal" href="javascript:void(0)">
											<i class="fe fe-pencil"></i> Edit
										</a>
										@endcan
										@can('destroy-permission')
										<a data-id="{{$permission->id}}" data-toggle="modal" href="javascript:void(0)" class="btn btn-sm bg-danger-light deletebtn">
											<i class="fe fe-trash"></i> Delete
										</a>
										@endcan
									</div>
								</td>
							</tr>
							@endforeach							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>			
</div>

<!-- Add Modal -->
<div class="modal fade" id="add_permission" aria-hidden="true" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Add Permission</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="POST" action="{{route('permissions')}}">
					@csrf
					<div class="row form-row">
						<div class="col-12">
							<div class="form-group">
								<label>Permission</label>
								<input type="text" name="permission" class="form-control">
							</div>
						</div>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Save Changes</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /ADD Modal -->

<!-- Edit Details Modal -->
<div class="modal fade" id="edit_permission" aria-hidden="true" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Edit Permission</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="post" action="{{route('permissions')}}">
					@csrf
					@method("PUT")
					<div class="row form-row">
						<div class="col-12">
							<input type="hidden" name="id" id="edit_id">
							<div class="form-group">
								<label>Permission</label>
								<input type="text" class="form-control edit_permission" name="permission">
							</div>
						</div>
						
					</div>
					<button type="submit" class="btn btn-primary btn-block">Save Changes</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /Edit Details Modal -->

<!-- Delete Modal -->
<x-modals.delete :route="'permissions'" :title="'Permission'" />
<!-- /Delete Modal -->
@endsection


@push('page-js')
	<!-- Select2 JS -->
	<script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
	<script>
		$(document).ready(function() {
			$('#perm-table').on('click','.editbtn',function (){
				event.preventDefault();
				jQuery.noConflict();
				$('#edit_permission').modal('show');
				var id = $(this).data('id');
				var permission = $(this).data('permission');
				$('#edit_id').val(id);
				$('.edit_permission').val(permission);
			});
			//
		});
	</script>
	
@endpush
