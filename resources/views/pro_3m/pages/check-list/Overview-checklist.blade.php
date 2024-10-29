@extends('pro_3m.pages.layout')
@section('content')
    <div class="container-fluid" style="margin-top: 1px;">
        <!-- Content Row -->
        <div class="card mb-4">
            <div class="card-header py-3">
                <h5 class="text-primary mx-3"><b><i class="icon-line-database" style="padding-right: 5px"></i>
                        TỶ LỆ HOÀN THÀNH CHECK LIST EQM THEO LINE</b>
                </h5>
                {{-- <h1 class="white">TỶ LỆ HOÀN THÀNH CHECK LIST EQM THEO LINE</h1> --}}
            </div>
            <div class="card-body">
                <div class="row">
                    {{-- <div class="col-sm-3">
                        <span>Line:</span>
                        <select name="line" id="Line_search" class="form-select">
                        </select>
                    </div> --}}
                    <div class=" col-sm-3 col-md-3  bottommargin-sm">
                        <label for="">Date Search</label>
                        <div class="input-daterange component-datepicker input-group">
                            <input type="text" value="" class="form-control text-start" id="date_form"
                                placeholder="YYYY-MM-DD">
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <span>Shift:</span>
                        <select name="shift" id="shift_search" class="form-select">
                            <option value="">All</option>
                            <option value="Ca ngày">Ca ngày</option>
                            <option value="Ca đêm">Ca đêm</option>

                        </select>
                    </div>
                    {{-- <div class="col-sm-3">
                        <span>Tình trạng:</span>
                        <select name="shift" id="Status_search" class="form-select">
                            <option value="">All</option>
                            <option value="Completed">Completed</option>
                            <option value="Pending" selected>Pending</option>

                        </select>
                    </div> --}}
                </div>
                <br>
                <div class="demo">
                    <div class="row" id="progress-container-2">

                    </div>
                </div>
                <div id="tooltip"
                    style="display:none; position:absolute; background-color:rgb(145, 145, 145); border:1px solid black; padding:5px;">
                    Detail
                </div>

            </div>

        </div>
    </div>

    {{-- <div class="demo">


            <div class="row" id="progress-container-2">

            </div>
        </div> --}}
@endsection

@section('admin-js')
    {{-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script> --}}

    <script>
        $(document).ready(function() {
            var tables;
            var currentDate = new Date();
            var date = currentDate.toISOString().split('T')[0];
            $('#date_form').val(date);
            console.log(date);

            localStorage.setItem('activeItem', 'Overview');
            var activeItem = localStorage.getItem('activeItem');
            let list = document.querySelectorAll(".sidebar-body-menu a");
            list.forEach((item) => item.addEventListener('click', activeLink));
            if (activeItem) {
                var selectedItem = document.getElementById(activeItem);
                if (selectedItem) {
                    selectedItem.classList.add('active');
                }
            }


            function activeLink() {
                var itemId = this.id;
                list.forEach((item) => {
                    item.classList.remove("active");
                });
                this.classList.add("active");
                localStorage.setItem('activeItem', itemId);
            }

            $('#date_form').on('change', function(e) {
                e.preventDefault();
                show_overview();

            });
            $('#Shift_search').on('change', function(e) {
                e.preventDefault();
                show_overview();

            });
            $('.progress-item').on('mouseenter', function(e) {
                $('#tooltip')
                    .css({
                        top: e.pageY + 10 + 'px', // Đặt tooltip bên dưới con trỏ chuột
                        left: e.pageX + 10 + 'px' // Đặt tooltip bên cạnh con trỏ chuột
                    })
                    .show(); // Hiển thị tooltip
            });

            $('.progress-item').on('mouseleave', function() {
                $('#tooltip').hide(); // Ẩn tooltip khi rời khỏi thẻ
            });

            $('.progress-item').on('mousemove', function(e) {
                $('#tooltip')
                    .css({
                        top: e.pageY + 10 + 'px', // Cập nhật vị trí tooltip khi di chuột
                        left: e.pageX + 10 + 'px'
                    });
            });

            function createProgressBar(line, completion) {
                const progressContainer = $('#progress-container');

                const progressCol = $('<div>').addClass('col-xl-6 col-sm-12 px-5');
                const title = $('<h3>').addClass('progress-title').text(line);
                const progressDiv = $('<div>').addClass('progress green');

                const progressBar = $('<div>').addClass('progress-bar').css({
                    width: `${completion}%`,
                    background: '#08a061'
                });

                const progressValue = $('<div>').addClass('progress-value').html(`<span>${completion}</span>%`);

                progressBar.append(progressValue);
                progressDiv.append(progressBar);
                progressCol.append(title).append(progressDiv);
                progressContainer.append(progressCol);
            }

            function createProgressBar_2(line, completion) {

                const progressContainer = $('#progress-container-2');
                const progressCol = $('<div>').addClass('col-xl-6 col-sm-12 px-5');
                const progressDiv = $('<div>').addClass('progress blue progress-item').attr('data-line', line);
                const title = $('<h3>').addClass('progress-title').text(line);

                const progressBar = $('<div>').addClass('progress-bar').css({
                    width: `${completion}%`,
                    // background: '#2e9ce0' // Màu đỏ
                });
                // const button = $('<button>').addClass('progress-buttom').text("View");

                const progressValue = $('<div>').addClass('progress-value').text(`${completion}%`);
                // const progressValue = $('<div>').addClass('progress-value');

                progressBar.append(progressValue);
                progressDiv.append(title).append(progressBar);
                progressCol.append(progressDiv);
                progressContainer.append(progressCol);


                progressDiv.on('click', function() {
                    const lineName = $(this).data('line');
                    // Điều hướng đến router tương ứng
                    var url = "{{ route('show.checklist', ':line') }}".replace(':line', lineName);
                    window.location.href = url;
                });
            }

            show_overview();


            // Gọi API để lấy dữ liệu
            function show_overview() {
                $('#progress-container-2').html("");
                var shift_search = $('#shift_search option:selected').text();
                var date_form = ($('#date_form').val());
                console.log(shift_search);
                console.log(date_form);
                $.ajax({
                    url: "{{ route('checklist.overview') }}",
                    method: 'GET',

                    dataType: "json",
                    data: {
                        shift: shift_search,
                        date_form: date_form,
                    },
                    success: function(data) {
                        data.forEach(item => {
                            console.log(item.Locations);
                            console.log(item.completion_percentage);

                            createProgressBar_2(item.Locations, item.completion_percentage);
                        });
                    },
                    error: function(error) {
                        console.error('Error fetching data:', error);
                    }
                });

            }


            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                        'content')
                }
            });
        });
    </script>
@endsection
