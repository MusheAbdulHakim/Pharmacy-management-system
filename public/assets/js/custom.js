$(document).ready(function (){
	// delete confirmation modal
	$('.deletebtn').on('click',function (){
		$('#deleteConfirmModal').modal('show');
		var id = $(this).data('id');
		$('#delete_id').val(id);
	});
	
	// datatables
	$('.datatable').DataTable( {
		dom: 'Bfrtip',
		buttons: {
			buttons: [ 'copy', 'csv', 'excel','pdf' ,'print']
		}
	} );

	
});



// Enable pusher logging - don't include this in production
Pusher.logToConsole = true;
var pusher = new Pusher('70ec641c34392a621c40', {
	cluster: 'mt1'
});
var channel = pusher.subscribe('my-channel');
channel.bind('my-event', function(data) {
	alert(JSON.stringify(data));
});
//pusher js code ends here