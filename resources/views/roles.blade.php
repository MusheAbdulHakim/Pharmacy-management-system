@extends('layouts.app')

@push('page-css')
<!-- Select2 css-->
<link rel="stylesheet" href="{{asset('assets/plugins/select2/css/select2.min.css')}}">
@endpush

@push('page-header')
<div class="col-sm-7 col-auto">
	<h3 class="page-title">Roles</h3>
	<ul class="breadcrumb">
		<li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
		<li class="breadcrumb-item active">Roles</li>
	</ul>
</div>
<div class="col-sm-5 col">
	<a href="#add_role" data-toggle="modal" class="btn btn-primary float-right mt-2">Add Role</a>
</div>

@endpush

@section('content')

<div class="row">
	<div class="col-sm-12">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<table id="roles-table" class="datatable table table-striped table-bordered table-hover table-center mb-0">
						<thead>
							<tr style="boder:1px solid black;">
								<th>Name</th>
								<th>Permissions</th>
								<th class="text-center action-btn">Actions</th>
							</tr>
						</thead>
						<tbody>
							@foreach ($roles as $role)
							<tr>								
								<td>
									{{$role->name}}
								</td>
								<td>
									@foreach ($role->getAllPermissions() as $permission)
									<span>{{ $permission->name }}</span>
									@endforeach
								</td>

								<td class="text-center">
									<div class="actions">
										<a data-id="{{$role->id}}" data-role="{{$role->name}}" data-permissions="{{$role->getAllPermissions()}}" class="btn btn-sm bg-success-light editbtn" data-toggle="modal" href="javascript:void(0)">
											<i class="fe fe-pencil"></i> Edit
										</a>
										<a data-id="{{$role->id}}" data-toggle="modal" href="javascript:void(0)" class="btn btn-sm bg-danger-light deletebtn">
											<i class="fe fe-trash"></i> Delete
										</a>
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
<div class="modal fade" id="add_role" aria-hidden="true" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Add Role</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="POST" action="{{route('roles')}}">
					@csrf
					<div class="row form-row">
						<div class="col-12">
							<div class="form-group">
								<label>Role</label>
								<input type="text" name="role" class="form-control">
							</div>
							<div class="form-group">
								<lable>Select Permissions</lable>
								<select class="select2 form-select form-control" name="permission[]" multiple="multiple"> 
									@foreach ($permissions as $permission)
										<option value="{{$permission->name}}">{{$permission->name}}</option>
									@endforeach
								</select>
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
<div class="modal fade" id="edit_role" aria-hidden="true" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Edit Role</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="post" action="{{route('roles')}}">
					@csrf
					@method("PUT")
					<div class="row form-row">
						<div class="col-12">
							<input type="hidden" name="id" id="edit_id">
							<div class="form-group">
								<label>Role</label>
								<input type="text" name="role" class="form-control edit_role">
							</div>
							<div class="form-group">
								<lable>Select Permissions</lable>
								<select class="select2 form-select form-control edit_perms" name="permission[]" multiple="multiple"> 
									@foreach ($permissions as $permission)
										<option value="{{$permission->name}}">{{$permission->name}}</option>
									@endforeach
								</select>
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
<x-modals.delete :route="'roles'" :title="'Roles'" />
<!-- /Delete Modal -->
@endsection


@push('page-js')
<!-- Select2 js-->
<script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
	<script>
		$(document).ready(function() {
			$('#role').on('click','.editbtn',function (){
				event.preventDefault();
				jQuery.noConflict();
				$('#edit_role').modal('show');
				var id = $(this).data('id');
				var role = $(this).data('role');
				var permissions = $(this).data('permissions');
				$('#edit_id').val(id);
				$('.edit_role').val(role);
				$('.edit_perms').val(permissions);
			});
			//
		});
	</script>
	
@endpush
