<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="SemiColonWeb" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Stylesheets
 ============================================= -->
    <link rel="shortcut icon" href="{{ asset('admin//img/svg/logo.svg') }}" type="image/x-icon">
    <link rel="stylesheet" href="{{ asset('smart-ver2/DataTables/Buttons-2.4.2/css/buttons.dataTables.min.css') }}"
        type="text/css" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/DataTables/RowGroup-1.4.1/css/rowGroup.dataTables.min.css') }}"
        type="text/css" />

    <link rel="stylesheet" href="{{ asset('smart-ver2/css/bootstrap.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/style.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('admin/css/style.min.css') }}">
    <link rel="stylesheet" href="{{ asset('smart-ver2/css/swiper.css') }}" type="text/css" />

    <link rel="stylesheet" href="{{ asset('smart-ver2/css/font-icons.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/css/animate.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/css/magnific-popup.css') }}" type="text/css" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/css/components/bs-filestyle.css') }}" type="text/css" />

    <link rel="stylesheet" href="{{ asset('smart-ver2/custom-3.css') }}" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/smart-tab-max-800.css') }}" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/smart-tab-max-1200.css') }}" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/smart-tab-max-1500.css') }}" />
    <link rel="stylesheet" href="{{ asset('smart-ver2/smart-tab-min-1500.css') }}" />
    <base href="{{ env('APP_URL') }}">
    <!-- Document Title
 ============================================= -->
    <title>SMART-TAB</title>

</head>

<body class="stretched">
    <div class="layer"></div>

    <!-- Document Wrapper
 ============================================= -->
    <div id="wrapper" class="clearfix">

        <section id="header">
            @yield('header')
        </section>

        <section id="content">
            @yield('content')
        </section>
    </div>

    <!-- Go To Top
 ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- JavaScripts
 ============================================= -->
    <script src="{{ asset('smart-ver2/js/jquery.js') }}"></script>
    <script src="{{ asset('smart-ver2/js/components/bs-datatable.js') }}"></script>


    <script src="{{ asset('smart-ver2/DataTables/Buttons-2.4.2/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/DataTables/pdfmake-0.2.7/pdfmake.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/DataTables/jszip-3.10.1/jszip.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/DataTables/pdfmake-0.2.7/vfs_fonts.js') }}"></script>
    <script src="{{ asset('smart-ver2/DataTables/Buttons-2.4.2/js/buttons.print.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/DataTables/Buttons-2.4.2/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/DataTables/RowGroup-1.4.1/js/dataTables.rowGroup.min.js') }}"></script>



    <script src="{{ asset('smart-ver2/js/plugins.min.js') }}"></script>

    <!-- Chart library -->
    <script src="{{ asset('admin/plugins/chart.min.js') }}"></script>
    <!-- Icons library -->
    <script src="{{ asset('admin/plugins/feather.min.js') }}"></script>
    <!-- Custom scripts -->
    {{-- <script src="{{ asset('smart-ver2/js/functions.js') }}"></script> --}}
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.min.js"></script> --}}
    <!-- Footer Scripts
        
 ============================================= -->
    {{-- <script src="{{ asset('smart-tab/js/functions.js') }}"></script> --}}
    <script src="{{ asset('smart-ver2/js/chart.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/js/chartjs-plugin-datalabels-v1.min.js') }}"></script>
    <script src="{{ asset('smart-ver2/tinymce/tinymce.min.js') }}"></script>
    <script src="{{ asset('admin/js/script.js') }}"></script>
    <script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>



    @yield('chartjs')
</body>

</html>
