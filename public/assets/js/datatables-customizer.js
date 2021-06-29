$(document).ready(function (){
	$('.datatable').DataTable();
	// datatable export buttons
	$('#datatable-export').DataTable( {
		dom: 'Bfrtip',		
		buttons: [
			{
            extend: 'collection',
            text: 'Export Data',
            buttons: [
				{
                    extend: 'pdf',
                    exportOptions: {
                        columns: "thead th:not(.action-btn)"
                    }
                },
				{
                    extend: 'excel',
                    exportOptions: {
                        columns: "thead th:not(.action-btn)"
                    }
                },
				{
                    extend: 'csv',
                    exportOptions: {
                        columns: "thead th:not(.action-btn)"
                    }
                },
				{
                    extend: 'print',
                    exportOptions: {
                        columns: "thead th:not(.action-btn)"
                    }
                }
            ]
        	}
    	]
	});

	
});


