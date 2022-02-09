@push('page-css')
    <!-- DataTables -->
    <link href="{{asset('assets/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/plugins/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="{{asset('assets/plugins/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />
@endpush

@push('page-js')
    <!-- Required datatable js -->
    <script src="{{asset('assets/plugins/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <!-- Buttons examples -->
    <script src="{{asset('assets/plugins/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('assets/plugins/jszip/jszip.min.js')}}"></script>
    <script src="{{asset('assets/plugins/pdfmake/build/pdfmake.min.js')}}"></script>
    <script src="{{asset('assets/plugins/pdfmake/build/vfs_fonts.js')}}"></script>
    <script src="{{asset('assets/plugins/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatables.net-buttons/js/buttons.colVis.min.js')}}"></script>
    <!-- Responsive examples -->
    <script src="{{asset('assets/plugins/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('assets/plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')}}"></script>
    @endpush

