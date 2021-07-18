@extends('layouts.app')

@push('page-css')
	<!-- Select2 css-->
	<link rel="stylesheet" href="{{asset('assets/plugins/select2/css/select2.min.css')}}">
@endpush

@push('page-header')
<div class="col-sm-7 col-auto">
	<h3 class="page-title">Sales</h3>
	<ul class="breadcrumb">
		<li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
		<li class="breadcrumb-item active">Sales</li>
	</ul>
</div>
@can('create-sales')
<div class="col-sm-5 col">
	<a href="#add_sales" data-toggle="modal" class="btn btn-primary float-right mt-2">Add Sales</a>
</div>
@endcan
@endpush

@section('content')
<div class="row">
	<div class="col-md-12">
	
		<!-- Recent Sales -->
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<table id="datatable-export" class="table table-hover table-center mb-0">
						<thead>
							<tr>
								<th>Medicine Name</th>
								<th>Quantity</th>
								<th>Total Price</th>
								<th>Date</th>
								<th class="action-btn">Action</th>
							</tr>
						</thead>
						<tbody>
							@foreach ($sales as $sale)
								@if (!(empty($sale->product->purchase)))
									<tr>
										<td>{{$sale->product->purchase->name}}</td>
										<td>{{$sale->quantity}}</td>
										<td>{{AppSettings::get('app_currency', '$')}} {{($sale->total_price)}}</td>
										<td>{{date_format(date_create($sale->created_at),"d M, Y")}}</td>
										<td>
											<div class="actions">
												@can('update-sales')
												<a data-id="{{$sale->id}}" data-product="{{$sale->product_id}}" data-quantity="{{$sale->quantity}}" class="btn btn-sm bg-success-light editbtn" href="javascript:void(0);">
													<i class="fe fe-pencil"></i> Edit
												</a>
												@endcan
												@can('destroy-sales')
												<a data-id="{{$sale->id}}" href="javascript:void(0);" class="btn btn-sm bg-danger-light deletebtn" data-toggle="modal">
													<i class="fe fe-trash"></i> Delete
												</a>
												@endcan
											</div>
										</td>
									</tr>
								@endif
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- /Recent sales -->
		
	</div>
</div>
<!-- Delete Modal -->
<x-modals.delete :route="'sales'" :title="'Product Sale'" />
<!-- /Delete Modal -->
<!-- Add Modal -->
<div class="modal fade" id="add_sales" aria-hidden="true" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Sell Product</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="POST" action="{{route('sales')}}">
					@csrf
					<div class="row form-row">
						<div class="col-12">
							<div class="form-group">
								<label>Product <span class="text-danger">*</span></label>
								<select class="select2 form-select form-control" name="product"> 
									@foreach ($products as $product)
										@if (!empty($product->purchase))
											@if (!($product->purchase->quantity <= 0))
												<option value="{{$product->id}}">{{$product->purchase->name}}</option>
											@endif
										@endif
									@endforeach
								</select>
							</div>
						</div>
						<input type="hidden" name="">
						<div class="col-12">
							<div class="form-group">
								<label>Quantity</label>
								<input type="number" value="1" class="form-control" name="quantity">
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

<!-- Edit Modal -->
<div class="modal fade" id="edit_sale" aria-hidden="true" role="dialog">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Edit Sold Product</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="POST" action="{{route('sales')}}">
					@csrf
					@method("PUT")
					<div class="row form-row">
						<div class="col-12">
							<input type="hidden" id="edit_id" name="id">
							<div class="form-group">
								<label>Product <span class="text-danger">*</span></label>
								<select class="select2 form-select form-control edit_product" name="product"> 
									@foreach ($products as $product)
										@if (!empty($product->purchase))
											@if (!($product->purchase->quantity <= 0))
												<option value="{{$product->id}}">{{$product->purchase->name}}</option>
											@endif
										@endif
									@endforeach
								</select>
							</div>
						</div>
						<input type="hidden" name="">
						<div class="col-12">
							<div class="form-group">
								<label>Quantity</label>
								<input type="number" class="form-control edit_quantity" name="quantity">
							</div>
						</div>
					</div>
					<button type="submit" class="btn btn-primary btn-block">Save Changes</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /Edit Modal -->
@endsection


@push('page-js')
	<!-- Select2 js-->
	<script src="{{asset('assets/plugins/select2/js/select2.min.js')}}"></script>
	<script>
		$(document).ready(function(){
			$('#datatable-export').on('click','.editbtn',function (){
				event.preventDefault();
				jQuery.noConflict();
				$('#edit_sale').modal('show');
				var id = $(this).data('id');
				var product = $(this).data('product');
				var quantity = $(this).data('quantity');
				$('#edit_id').val(id);
				$('.edit_product').val(product);
				$('.edit_quantity').val(quantity);
				
			});
		});
	</script>
@endpush
