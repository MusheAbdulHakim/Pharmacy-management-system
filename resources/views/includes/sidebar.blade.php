<!-- Sidebar -->
<div class="sidebar" id="sidebar">
	<div class="sidebar-inner slimscroll">
		<div id="sidebar-menu" class="sidebar-menu">
			
			<ul>
				<li class="menu-title"> 
					<span>Main</span>
				</li>
				<li class="{{ Request::routeIs('dashboard') ? 'active' : '' }}"> 
					<a href="{{route('dashboard')}}"><i class="fe fe-home"></i> <span>Dashboard</span></a>
				</li>
				<li class="{{ Request::routeIs('categories') ? 'active' : '' }}"> 
					<a href="{{route('categories')}}"><i class="fe fe-layout"></i> <span>Categories</span></a>
				</li>
				
				<li class="submenu">
					<a href="#"><i class="fe fe-document"></i> <span> Products</span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
						<li><a class="{{ Request::routeIs(('products')) ? 'active' : '' }}" href="{{route('products')}}">Products</a></li>
						<li><a class="{{ Request::routeIs('add-product') ? 'active' : '' }}" href="{{route('add-product')}}">Add Product</a></li>
						<li><a class="{{ Request::routeIs('outstock') ? 'active' : '' }}" href="{{route('outstock')}}">Out-Stock</a></li>
						<li><a class="{{ Request::routeIs('expired') ? 'active' : '' }}" href="{{route('expired')}}">Expired</a></li>
					</ul>
				</li>
				
				<li class="submenu">
					<a href="#"><i class="fe fe-star-o"></i> <span> Purchase</span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
						<li><a class="{{ Request::routeIs('purchases') ? 'active' : '' }}" href="{{route('purchases')}}">Purchase</a></li>
						<li><a class="{{ Request::routeIs('add-purchase') ? 'active' : '' }}" href="{{route('add-purchase')}}">Add Purchase</a></li>
					</ul>
				</li>
				<li><a class="{{ Request::routeIs('sales') ? 'active' : '' }}" href="{{route('sales')}}"><i class="fe fe-activity"></i> <span>Sales</span></a></li>
				<li class="submenu">
					<a href="#"><i class="fe fe-user"></i> <span> Supplier</span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
						<li><a class="{{ Request::routeIs('suppliers') ? 'active' : '' }}" href="{{route('suppliers')}}">Supplier</a></li>
						<li><a class="{{ Request::routeIs('add-supplier') ? 'active' : '' }}" href="{{route('add-supplier')}}">Add Supplier</a></li>
					</ul>
				</li>

				<li class="submenu">
					<a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
						<li><a href="#">Reports</a></li>
					</ul>
				</li>

				<li class="submenu">
					<a href="#"><i class="fe fe-lock"></i> <span> Access Control</span> <span class="menu-arrow"></span></a>
					<ul style="display: none;">
						<li><a class="{{ Request::routeIs('permissions') ? 'active' : '' }}" href="{{route('permissions')}}">Permissions</a></li>
						<li><a class="{{ Request::routeIs('roles') ? 'active' : '' }}" href="{{route('roles')}}">Roles</a></li>
					</ul>
				</li>

				<li class="{{ Request::routeIs('users') ? 'active' : '' }}"> 
					<a href="{{route('users')}}"><i class="fe fe-users"></i> <span>Users</span></a>
				</li>
				
				<li class="{{ Request::routeIs('profile') ? 'active' : '' }}"> 
					<a href="{{route('profile')}}"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
				</li>
				<li class="{{ Request::routeIs('settings') ? 'active' : '' }}"> 
					<a href="{{route('settings')}}">
						<i class="fa fa-gears"></i>
						 <span> Settings</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- /Sidebar -->