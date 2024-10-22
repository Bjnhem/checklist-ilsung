@extends('pro_3m.pages.layout')
@section('content')
    <div class="container-fluid" style="margin-top: 1px;">
        <!-- Content Row -->
        <div class="card mb-4">
            <div class="card-header py-3">
                <h5 class="text-primary mx-3"><b><i class="icon-line-database" style="padding-right: 5px"></i>TÌNH TRẠNG
                        CHECKLIST EQM</b>
                </h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-3">
                        <span>Line:</span>
                        <select name="line" id="Line_search" class="form-select">
                        </select>
                    </div>
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
                    <div class="col-sm-3">
                        <span>
                            <br>
                        </span>
                        <button id="Search" class="form-control btn-success"><i
                                class="icon-line-search"></i>Search</button>
                    </div>

                </div>
                <br>
                <table id="table_check_list_search" class="table table-bordered table-hover"
                    style="width:100%;border-collapse:collapse;">
                    {{-- <thead class="table-success">
                        <tr>
                            <th style="width:3%">STT</th>
                            <th style="width:7%">Machine</th>
                            <th style="width:7%">Item check</th>
                            <th style="width:auto">Nội dung</th>
                            <th style="width:7%">Remark</th>
                            <th style="width:7%">Tình trạng</th>
                            <th style="width:10%">Vấn đề</th>
                            <th style="width:7%">Tiến độ</th>
                        </tr>
                    </thead> --}}

                </table>

            </div>

        </div>

        <div class="card mb-4">
            <div class="card-header py-3">
                <h5 class="text-primary mx-3"><b><i class="icon-line-check-square" style="padding-right: 5px"></i>CHECK LIST
                        EQM ILSUNG</b>
                </h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-2">
                        <span>Line:</span>
                        <select name="line" id="Line" class="form-select">
                        </select>
                    </div>

                    <div class="col-sm-2">
                        <span>Model:</span>
                        <select name="model" id="Model" class="form-select">
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <span>Machine:</span>
                        <select name="Machine" id="Machine" class="form-select">
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <span>Machine-ID:</span>

                        <input name="ID_machine" type="text" id="ID_machine" class="form-control"
                            placeholder="Chọn ID máy...">
                        <div id="suggestions" style="border: 1px solid #ccc; display: none;"></div>
                        <div id="error-message" style="color: red; display: none;"></div>
                        {{-- <select name="ID_machine" id="ID_machine" class="form-select">
                        </select> --}}

                    </div>

                    <div class="col-sm-2">
                        <span>Item check list:</span>
                        <select name="item" id="Checklist_item" class="form-select">
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <span>Khung check:</span>
                        <select name="shift" id="Khung_gio" class="form-select">

                        </select>
                    </div>

                    {{-- <div class="col-sm-12">
                        <br>
                    </div> --}}
                    {{-- <div class="col-sm-2">
                        <span>Người nhập:</span>
                        <input name="name" type="text" id="name" class="form-control" placeholder="Nhập tên...">
                    </div> --}}

                    {{-- <div class=" col-sm-2 col-md-2  bottommargin-sm">
                        <label for="">Date Search</label>

                        <div class="input-daterange component-datepicker multidate input-group">
                            <input type="text" value="" class="form-control text-start" id="date"
                                placeholder="MM/DD/YYYY">
                        </div>
                    </div> --}}
                    <div class="col-sm-2">
                        <span>
                            <br>
                        </span>
                        <button id="save-check-list" class="form-control btn-success"><i class="icon-line-check"></i>Save
                        </button>
                    </div>

                </div>
                <br>
                <table class="table table-bordered text-center mt-4 table-hover" id="table-check-list"
                    style="width: 100%; text-align: center; vertical-align:middle">
                    <thead class="table-success">
                        <tr>
                            <th style="width:3%">STT</th>
                            <th style="width:7%">Machine</th>
                            <th style="width:7%">Item check</th>
                            <th style="width:auto">Nội dung</th>
                            <th style="width:7%">Remark</th>
                            <th style="width:7%">Tình trạng</th>
                            <th style="width:10%">Vấn đề</th>
                            <th style="width:7%">Tiến độ</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>

        {{-- model show check list --}}

        <div class="modal" id="modal-show">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="text-primary mx-3"><b><i class="icon-line-database" style="padding-right: 5px"></i>DATA
                                CHECK
                                LIST PRO-3M</b>
                        </h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary close" id="close-model"
                            data-bs-dismiss="modal">Close</button>
                    </div>
                    <div class="modal-body">
                        <table id="table_check_list_view" class="table table-bordered table-hover"
                            style="width:100%;border-collapse:collapse;">
                            <thead class="table-success" style="text-align: center; vertical-align:middle">
                            </thead>
                        </table>

                    </div>
                </div>
            </div>
        </div>

        <div class="modal" id="modal-check">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="text-primary mx-3"><b><i class="icon-line-database"
                                    style="padding-right: 5px"></i>DATA
                                CHECK LIST PRO-3M</b>
                        </h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary close" id="close-model">Close</button>
                    </div>
                    <div class="modal-body">
                        <div class="row">

                            <div class="col-sm-2">
                                <span>Checklist:</span>
                                <select name="check_list" id="check_list" class="form-select">
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <span>Loại Line:</span>
                                <select name="line_type" id="line_type" class="form-select">

                                </select>
                            </div>
                            <div class="col-sm-2">
                                <span>Công Đoạn:</span>
                                <select name="cong_doan" id="cong_doan" class="form-select">
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <span>Phân Loại:</span>
                                <select name="phan_loai" id="phan_loai" class="form-select">
                                </select>
                            </div>

                            <div class="col-sm-2">
                                <span>Line:</span>
                                <select name="line" id="line" class="form-select">
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <span>Shift:</span>
                                <select name="shift" id="shift" class="form-select">
                                    <option value="Shift1A">Shift1A</option>
                                    <option value="Shift2A">Shift2A</option>
                                </select>
                            </div>

                            <div class="col-sm-12">
                                <br>
                            </div>
                            <div class="col-sm-2">
                                <span> Tình trạng: </span>
                                <select name="status" id="status" class="form-select">
                                    <option value="ON" selected>ON</option>
                                    <option value="OFF">OFF</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <span>Gen:</span>
                                <input name="gen" type="number" id="gen" class="form-control"
                                    placeholder="Nhập gen...">
                            </div>
                            <div class="col-sm-2">
                                <span>Tên:</span>
                                <input name="name" type="text" id="name" class="form-control"
                                    placeholder="Nhập tên...">
                            </div>
                            <div class="col-sm-2">
                                <span>Bộ phận:</span>
                                <input name="part" type="text" id="part" class="form-control">
                            </div>
                            <div class="col-sm-2">
                                <span>Thời gian:</span>
                                <input type="text" name="date_check" id="date_check" class="form-control">
                            </div>
                            <div class="col-sm-2">
                                <span>
                                    <br>
                                </span>
                                <button id="save-check-list" class="form-control btn-success"><i
                                        class="icon-line-check"></i>Save
                                </button>
                            </div>

                        </div>

                        <br>
                        <table class="table table-bordered text-center mt-4 table-hover" id="table-check-list"
                            style="width: 100%; text-align: center; vertical-align:middle">
                            <thead class="table-success">
                                <tr>
                                    <th style="width:3%">STT</th>
                                    <th style="width:7%">Check List</th>
                                    <th style="width:7%">Công đoạn</th>
                                    <th style="width:7%">Phân loại</th>
                                    <th style="width:auto">Nội dung</th>
                                    <th style="width:7%">Tình trạng</th>
                                    <th style="width:10%">Vấn đề</th>
                                    <th style="width:7%">Tiến độ</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>


    </div>
@endsection

@section('admin-js')
    <script>
        $(document).ready(function() {
            var colum_table = [];
            var tables;
            var table_edit;
            var table = 'result';
            var table_2 = 'result_detail'
            var table_result = table;
            var table_result_detail = table_2;
            var ID_machine_list = [];
            const currentDate = new Date();
            const date = currentDate.toISOString().split('T')[0];
            $('#date_form').val(date);

            localStorage.setItem('activeItem', 'overview');
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
            show_master();
            show_master_status();

            function show_master_status() {
                $.ajax({
                    type: "GET",
                    url: "{{ route('check.list.masster') }}",
                    dataType: "json",
                    success: function(response) {
                        $('#line_search').empty();
                        $.each(response.line, function(index, value) {
                            $('#Line_search').append($('<option>', {
                                value: value.id,
                                text: value.line_name,
                            }));
                        });



                    }
                });

            }

            function show_master() {
                $.ajax({
                    type: "GET",
                    url: "{{ route('check.list.masster') }}",
                    dataType: "json",
                    // data: {
                    //     id: "1"
                    // },
                    success: function(response) {
                        $('#Machine').empty();
                        $('#ID_machine').empty();
                        $('#line').empty();
                        $('#Model').empty();
                        $('#line').empty();
                        $('#Checklist_item').empty();
                        $('#Khung_gio').empty();
                        $('#Machine').append($('<option>', {
                            value: "",
                            text: "---",
                        }));
                        $('#Checklist_item').append($('<option>', {
                            value: "",
                            text: "---",
                        }));

                        $('#Khung_gio').append($('<option>', {
                            value: "",
                            text: "---",
                        }));

                        ID_machine_list = [];
                        $.each(response.machine, function(index, value) {
                            $('#Machine').append($('<option>', {
                                value: value.id,
                                text: value.Machine,
                            }));
                        });
                        $.each(response.line, function(index, value) {
                            $('#Line').append($('<option>', {
                                value: value.id,
                                text: value.line_name,
                            }));
                        });
                        $.each(response.model, function(index, value) {
                            $('#Model').append($('<option>', {
                                value: value.id,
                                text: value.model,
                            }));
                        });
                        // $.each(response.list_ID_machine, function(index, value) {
                        //     ID_machine_list.push(value.ID_machine);
                        // });

                        // $.each(response.item_check, function(index, value) {
                        //     $('#Checklist_item').append($('<option>', {
                        //         value: value,
                        //         text: value,
                        //     }));
                        // });
                        // $.each(response.khung_check, function(index, value) {
                        //     $('#Khung_gio').append($('<option>', {
                        //         value: value.id,
                        //         text: value.khung_check,
                        //     }));
                        // });


                        // $("#ID_machine").autocomplete({
                        //     source: ID_machine_list,
                        //     minLength: 0, // Để hiển thị gợi ý ngay khi nhấp vào ô
                        //     focus: function(event, ui) {
                        //         event.preventDefault(); // Ngăn chặn việc điền tự động
                        //     },
                        //     select: function(event, ui) {
                        //         $('#ID_machine').val(ui.item
                        //             .value); // Điền giá trị đã chọn vào input
                        //         return false; // Ngăn chặn hành vi mặc định
                        //     }
                        // }).focus(function() {
                        //     $(this).autocomplete('search',
                        //         ''); // Tìm kiếm tất cả gợi ý khi nhấp vào
                        // });


                    }
                });

            }
            // $('#ID_machine').on('blur', function() {
            //     const inputValue = $(this).val();

            //     // Kiểm tra xem giá trị có trong danh sách gợi ý không
            //     if (!ID_machine_list.includes(inputValue)) {
            //         if (inputValue == "") {
            //             $('#error-message').text('Vui lòng chọn ID máy cần check')
            //                 .show(); // Hiển thị thông báo lỗi
            //         } else {
            //             $('#error-message').text('ID máy không đúng')
            //                 .show(); // Hiển thị thông báo lỗi
            //         }

            //     } else {
            //         $('#error-message').hide(); // Ẩn thông báo lỗi nếu giá trị hợp lệ
            //     }
            // });

            $('#Machine').on('change', function() {
                var machine_id = $(this).val();

                $.ajax({
                    type: "GET",
                    url: "{{ route('item.checklist.search') }}",
                    data: {
                        machine_id: machine_id,

                    },
                    success: function(response) {
                        ID_machine_list = [];
                        $('#ID_machine').empty();
                        $('#Checklist_item').empty();
                        $('#Khung_gio').empty();
                        $('#table-check-list').DataTable().clear();
                        $('#table-check-list').DataTable().destroy();
                        $('#Checklist_item').append($('<option>', {
                            value: "",
                            text: "---",
                        }));

                        $('#ID_machine').append($('<option>', {
                            value: "",
                            text: "---",
                        }));

                        $.each(response.checklist_item, function(index, value) {
                            $('#Checklist_item').append($('<option>', {
                                value: value.id,
                                text: value.item_checklist,
                            }));
                        });

                        $.each(response.ID_machine, function(index, value) {
                            ID_machine_list.push(value.Code_machine);
                        });

                        // $.each(response.khung_check, function(index, value) {
                        //     $('#Khung_gio').append($('<option>', {
                        //         value: value.id,
                        //         text: value.khung_check,
                        //     }));
                        // });

                        $("#ID_machine").autocomplete({
                            source: ID_machine_list,
                            minLength: 0, // Để hiển thị gợi ý ngay khi nhấp vào ô
                            focus: function(event, ui) {
                                event
                                    .preventDefault(); // Ngăn chặn việc điền tự động
                            },
                            select: function(event, ui) {
                                $('#ID_machine').val(ui.item
                                    .value); // Điền giá trị đã chọn vào input
                                return false; // Ngăn chặn hành vi mặc định
                            }
                        }).focus(function() {
                            $(this).autocomplete('search',
                                ''); // Tìm kiếm tất cả gợi ý khi nhấp vào
                        });
                    }
                });

            });

            $('#Checklist_item').on('change', function() {
                var item_check = $(this).val();
                // var machine = $('#Machine').val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('khung.check.search') }}',
                    data: {
                        item_check: item_check,
                        // machine: machine,
                    },

                    success: function(response) {
                        $('#Khung_gio').empty();
                        $.each(response.khung_check, function(index, value) {
                            $('#Khung_gio').append($('<option>', {
                                value: value.id,
                                text: value.khung_check,
                            }));
                        });
                        show_check_list();
                    }
                });

            });


            function show_check_list() {
                // var machine = $('#Machine').val();
                var item_check = $('#Checklist_item').val();
                // console.log(machine);
                // console.log(item_check);
                $.ajax({
                    type: "GET",
                    url: '{{ route('check.list.search') }}',
                    data: {
                        // machine: machine,
                        item_check: item_check,
                    },
                    success: function(response) {
                        console.log(response.data_checklist);
                        $('#table-check-list').DataTable().destroy();
                        var count = 0;
                        var data = [];
                        $.each(response.data_checklist, function(index, value) {
                            count++;
                            var status =
                                '<select name = "status" id="' + value.id +
                                '" class="form-select">\
                                                                                                         <option value = "OK">OK</option>\
                                                                                                       <option value = "NG">NG</option>\
                                                                                                       </select>';
                            var problem =
                                '<input name="problem" type="text" id="' + value.id +
                                '" class="form-control">';
                            var process =
                                '<select name = "process" id="' + value.id +
                                '"class="form-select">\
                                                                                                          <option value = "OK"></option>\
                                                                                                          <option value = "Complete">Complete</option>\
                                                                                                         <option value = "Pending">Pending</option>\
                                                                                                        <option value = "Improgress" >Improgress</option>\
                                                                                                        </select >';
                            data.push([
                                count,
                                value.Machine,
                                value.item_checklist,
                                value.Hang_muc,
                                value.Chu_ky,
                                status,
                                problem,
                                process
                            ]);
                        });
                        $('#table-check-list').DataTable().destroy();
                        $('#table-check-list').DataTable({
                            data: data,
                            "info": false,
                            'ordering': false,
                            'searching': false,
                        });

                    }
                });
            }

            $(document).on('click', '#Search', function(e) {
                e.preventDefault();
                if (tables) {
                    $('#table_check_list_search').DataTable().destroy();
                }
                var line_search = $('#line_search option:selected').text();
                var shift_search = $('#shift_search option:selected').text();
                var date_form = Convertdate($('#date_form').val());
    
                if ($('#date_form').val() == 0) {
                    alert('Vui lòng chọn thời gian kiểm tra');
                } else {
                    $.ajax({
                        type: "POST",
                        url: "{{ route('check.list.overview') }}",
                        dataType: 'json',
                        data: {
                            groups: tab,
                            check_list: check_list_search,
                            cong_doan: cong_doan_search,
                            line_type: line_type_search,
                            phan_loai: phan_loai_search,
                            line: line_search,
                            shift: shift_search,
                            date_form: date_form,
                            table: table_result + year,
                            groups: tab
                        },
                        success: function(users) {
                            var count = 0;
                            var data = [];
                            var colum = [];
                            var data;
                            $.each(users.data, function(index, value) {
                                count++;
                                if (value.Check_status == "Pending") {
                                    var view = '<button type="button" value="' + value
                                        .id_phan_loai +
                                        '" data-bs-toggle="modal" data-bs-target="#modal-show" class="btn btn-primary check editbtn btn-sm" id="' +
                                        value.id + '">View</button>' +
                                        ' <input type="hidden" value="' + date_form +
                                        '" id="date_check_' + value
                                        .id + '">';
                                } else {
                                    var view = '<button type="button" value="' + value
                                        .id_phan_loai +
                                        '" data-bs-toggle="modal" data-bs-target="#modal-check" class="btn btn-danger check editbtn btn-sm" id="' +
                                        value.id + '">Check</button>' +
                                        ' <input type="hidden" value="' + date_form +
                                        '" id="date_check_' + value
                                        .id + '">';
                                }


                                data.push([
                                    count,
                                    value.Location,
                                    value.Machine,
                                    value.Code_machine,
                                    value.item_checklist,
                                    value.Khung_check,
                                    value.Shift,
                                    value.Check_status,
                                    value.Date_check,
                                    view,
                                ]);
                            });

                            var header =
                                '<thead class="table-success" style="text-align: center; vertical-align:middle">' +
                                '<tr style="text-align: center">' +
                                '<th style="text-align: center">STT</th>' +
                                '<th style="text-align: center">Line</th>' +
                                '<th style="text-align: center">Machine</th>' +
                                '<th style="text-align: center">Code QL</th>' +
                                '<th style="text-align: center">Check List</th>' +
                                '<th style="text-align: center">Khung check</th>' +
                                '<th style="text-align: center">Shift</th>' +
                                '<th style="text-align: center">Trạng thái</th>' +
                                '<th style="text-align: center">Date</th>' +
                                '<th style="text-align: center">Edit</th>' +
                                '</tr>'
                            '</thead>'

                            $('#table_check_list_search').html(header);
                            tables = $('#table_check_list_search').DataTable({
                                data: data,
                                "info": true,
                                'ordering': false,
                                'autowidth': true,
                                "dom": 'Bfrtip',
                                select: {
                                    style: 'single',
                                },

                            });
                        }
                    });
                }
            });

            // $(document).on('click', '#save-check-list', function(e) {
            //     e.preventDefault();
            //     var data1 = [];
            //     var data2 = [];
            //     var group = tab;
            //     var check_list = $('#check_list option:selected').text();
            //     var cong_doan = $('#cong_doan option:selected').text();
            //     var line_type = $('#line_type option:selected').text();
            //     var phan_loai = $('#phan_loai option:selected').text();
            //     var line = $('#line option:selected').text();
            //     var shifts = $('#shift option:selected').text();
            //     var tinh_trang = $('#status option:selected').text();
            //     var name = $('#gen').val() + ' - ' + $('#name').val();
            //     var part = $('#part').val();
            //     var problems_1 = "";
            //     var status_1 = 'OK';
            //     var process_1 = '';



            //     var date = $('#date_check').val();
            //     var d1 = date.split('-');
            //     var year = '_' + d1[0] + '_' + d1[1];
            //     var table_1 = table_result + year;
            //     var table_2 = table_result_detail + year;
            //     console.log(table_1);
            //     console.log(table_2);

            //     if (line == '---' || shifts == '---' || tinh_trang == '---' || phan_loai == '---' || name ==
            //         ' - ' || part == '') {
            //         alert('Bạn điền thiếu thông tin');
            //     } else {
            //         $('#table-check-list').DataTable().rows().every(function() {
            //             var status = $(this.node()).find('select[name="status"] option:selected')
            //                 .text();
            //             var process = $(this.node()).find('select[name="process"] option:selected')
            //                 .text();

            //             if (status == 'NG') {
            //                 status_1 = "NG";
            //                 process_1 = process;
            //             }
            //         });
            //         var data1 = {
            //             id_check_list_line: id_master,
            //             groups: group,
            //             check_list: check_list,
            //             phan_loai: phan_loai,
            //             cong_doan: cong_doan,
            //             line_type: line_type,
            //             line: line,
            //             shifts: shifts,
            //             name: name,
            //             part: part,
            //             tinh_trang: tinh_trang,
            //             status: status_1,
            //             problem: problems_1,
            //             process: process_1,
            //             date: date
            //         }
            //         $.ajax({
            //             type: "POST",
            //             url: "{{ route('admin.save.check.list.pending', ':table') }}".replace(
            //                 ':table', table_1),
            //             dataType: 'json',
            //             data: data1,
            //             success: function(response) {
            //                 if (response.status == 400) {
            //                     alert("Checklist đã tồn tại")
            //                 } else {
            //                     var id = response.id;
            //                     $('#table-check-list').DataTable().rows().every(function() {
            //                         var rowData = this.data();
            //                         var problems = $(this.node()).find('input').val();
            //                         var status = $(this.node()).find(
            //                                 'select[name="status"] option:selected')
            //                             .text();
            //                         var process = $(this.node()).find(
            //                                 'select[name="process"] option:selected')
            //                             .text();
            //                         var newData = {
            //                             id_check_list: id,
            //                             groups: group,
            //                             check_list: rowData[1],
            //                             cong_doan: rowData[2],
            //                             phan_loai: rowData[3],
            //                             comment: rowData[4],
            //                             line: line,
            //                             line_type: line_type,
            //                             shifts: shifts,
            //                             name: name,
            //                             part: part,
            //                             tinh_trang: tinh_trang,
            //                             status: status,
            //                             problem: problems,
            //                             process: process,
            //                             date: date
            //                         }
            //                         data2.push(newData);
            //                     })
            //                     $.ajax({
            //                         type: "POST",
            //                         url: "{{ route('admin.save.check.list.detail', ':table') }}"
            //                             .replace(':table', table_2),
            //                         contentType: 'application/json',
            //                         data: JSON.stringify(data2),
            //                         success: function(users) {
            //                             alert('save check-list Thành công');

            //                             for (var i = rowSelected.length - 1; i >=
            //                                 0; i--) {
            //                                 tables.row(rowSelected[i]).remove();
            //                             }
            //                             tables.draw();

            //                             $('#table_check_list_view').DataTable()
            //                                 .clear().destroy();
            //                             $('#table_check_list_view thead tr')
            //                                 .remove();
            //                             $('#modal-show').modal('hide');
            //                         }
            //                     });
            //                 }
            //             }
            //         });
            //     }
            // });

            $(document).on('click', '.check', function(e) {
                e.preventDefault();
                var check_list_search = $(this).val();
                id_master = this.id;
                var date = $('#date_check_' + id_master).val();
                rowSelected = tables.rows('.selected').indexes();

                $.ajax({
                    type: "GET",
                    url: '{{ route('admin.check.list.search.overview') }}',
                    data: {
                        id: check_list_search,
                        id_master: id_master,
                        groups: tab,

                    },
                    success: function(response) {
                        $('#table-check-list').DataTable().destroy();
                        var count = 0;
                        var data = [];
                        var master = response.data_master;
                        $.each(master, function(index, value) {
                            $('#check_list').empty();
                            $('#line_type').empty();
                            $('#cong_doan').empty();
                            $('#phan_loai').empty();
                            $('#line').empty();
                            $('#shifts').empty();

                            $('#check_list').append($('<option>', {
                                value: value.id,
                                text: value.check_list,
                            }));
                            $('#line_type').append($('<option>', {
                                value: value.id,
                                text: value.line_type,
                            }));
                            $('#cong_doan').append($('<option>', {
                                value: value.id,
                                text: value.cong_doan,
                            }));
                            $('#phan_loai').append($('<option>', {
                                value: value.id,
                                text: value.phan_loai,
                            }));
                            $('#line').append($('<option>', {
                                value: value.id,
                                text: value.line,
                            }));
                            $('#shifts').append($('<option>', {
                                value: value.id,
                                text: value.shifts,
                            }));
                        });
                        $('#date_check').val(date);

                        $.each(response.data_check_list, function(index, value) {
                            count++;

                            var status =
                                '<select name = "status" id="' + value.id +
                                '" class="form-control">\
                                                                                                                                                             <option value = "OK">OK</option>\
                                                                                                                                                             <option value = "NG">NG</option>\
                                                                                                                                                             </select>';

                            var problem =
                                '<input name="problem" type="text" id="' + value.id +
                                '" class="form-control">';
                            var process =
                                '<select name = "process" id="' + value.id +
                                '"class="form-select ">\
                                                                                                                                                             <option value = "OK"></option>\
                                                                                                                                                             <option value = "Complete">Complete</option>\
                                                                                                                                                             <option value = "Pending">Pending</option>\
                                                                                                                                                            <option value = "Improgress" >Improgress</option>\
                                                                                                                                                            </select >';

                            data.push([
                                count,
                                $('#check_list option:selected').text(),
                                $('#cong_doan option:selected').text(),
                                $('#phan_loai option:selected').text(),
                                value.comment,
                                status,
                                problem,
                                process
                            ]);
                        });
                        $('#table-check-list').DataTable().destroy();
                        $('#table-check-list').DataTable({
                            data: data,
                            "info": false,
                            'ordering': false,
                            'searching': false,
                        });

                    }
                });

            });

            function Convertdate(date) {

                var data = date.split('/');
                var dateconvert = data[2] + '-' + data[0] + '-' + data[1];
                return dateconvert;
            }


            $(document).on('click', '#save-check-list', function(e) {
                e.preventDefault();
                var data = [];
                var data2 = [];
                var ID_item_checklist = $('#Khung_gio option:selected').val();
                var line = $('#Line option:selected').text();
                var Model = $('#Model option:selected').text();
                var Machine = $('#Machine option:selected').text();
                var Khung_gio = $('#Khung_gio option:selected').text();
                var ID_machine = $('#ID_machine').val();
                var Checklist_item = $('#Checklist_item option:selected').text();
                // var name =Binh ;
                var status_1 = 'OK';
                console.log(ID_item_checklist);
                console.log(ID_machine);
                console.log(date);


                if (line == '---' || Model == '---' || Machine == '---' || ID_machine == '---' ||
                    Checklist_item == ' - ' || Khung_gio == '' || $('#date').val() == 0) {
                    alert('Bạn điền thiếu thông tin');
                } else {
                    $('#table-check-list').DataTable().rows().every(function() {
                        var status = $(this.node()).find('select[name="status"] option:selected')
                            .text();
                        var process = $(this.node()).find('select[name="process"] option:selected')
                            .text();

                        if (status == 'NG') {
                            status_1 = "NG";
                        }
                    });
                    var data = {
                        id_checklist: ID_item_checklist,
                        status: status_1,
                        date: date,
                        ID_machine: ID_machine
                    }

                    $.ajax({
                        type: "POST",
                        url: "{{ route('save.check.list', ':table') }}".replace(':table',
                            'checklist_result'),
                        dataType: 'json',
                        data: data,
                        success: function(response) {
                            if (response.status == 400) {
                                alert('Update plan check list');

                            } else {
                                var id = response.id;
                                console.log(id);
                                $('#table-check-list').DataTable().rows().every(function() {
                                    var rowData = this.data();
                                    var problems = $(this.node()).find('input').val();
                                    var status = $(this.node()).find(
                                            'select[name="status"] option:selected')
                                        .text();
                                    var process = $(this.node()).find(
                                            'select[name="process"] option:selected')
                                        .text();
                                    var newData = {
                                        id_check_list: id,
                                        groups: group,
                                        check_list: rowData[1],
                                        cong_doan: rowData[2],
                                        phan_loai: rowData[3],
                                        comment: rowData[4],
                                        line: line,
                                        line_type: line_type,
                                        shifts: shifts,
                                        name: name,
                                        part: part,
                                        tinh_trang: tinh_trang,
                                        status: status,
                                        problem: problems,
                                        process: process,
                                        date: date

                                    }
                                    data.push(newData);
                                })
                                $.ajax({
                                    type: "POST",
                                    url: "{{ route('save.check.list.detail', ':table') }}"
                                        .replace(':table', table_2),
                                    contentType: 'application/json',
                                    data: JSON.stringify(data),
                                    success: function(users) {
                                        alert('save check-list Thành công');
                                    }
                                });
                            }
                        }
                    });
                }


            });



            /*     js cho search checklist */

            function Convertdate(date) {
                var data = date.split('/');
                var dateconvert = data[2] + '-' + data[0] + '-' + data[1];
                return dateconvert;
            }

            function Convert_year(date) {
                var data = date.split('/');
                var dateconvert = '_' + data[2] + '_' + data[0];
                return dateconvert;
            }

            function Convert_month(date) {
                var data = date.split('/');
                var dateconvert = data[0];
                return dateconvert;
            }

            $(document).on('click', '#Search', function(e) {
                e.preventDefault();
                if (tables) {
                    $('#table_check_list_search').DataTable().destroy();
                }
                var check_list_search = $('#check_list_search option:selected').text();
                var phan_loai_search = $('#phan_loai_search option:selected').text();
                var cong_doan_search = $('#cong_doan_search option:selected').text();
                var line_type_search = $('#line_type_search option:selected').text();
                var line_search = $('#line_search option:selected').text();
                var shift_search = $('#shift_search option:selected').text();
                var tinh_trang = $('#tinh_trang_search option:selected').text();
                var status_search = $('#status_search option:selected').text();
                var date_form = Convertdate($('#date_form').val());
                var date_to = Convertdate($('#date_to').val());
                var year = Convert_year($('#date_form').val());
                var month_form = Convert_month($('#date_form').val());
                var month_to = Convert_month($('#date_to').val());

                if ($('#date_form').val() == 0 || $('#date_to').val() == 0) {
                    alert('Vui lòng chọn thời gian kiểm tra');
                } else {
                    if (month_form != month_to) {
                        alert('Thời gian kiểm tra vượt quá 1 tháng');
                    } else {
                        $.ajax({
                            type: "POST",
                            url: "{{ route('search.check.list') }}",
                            dataType: 'json',
                            data: {
                                check_list: check_list_search,
                                cong_doan: cong_doan_search,
                                line_type: line_type_search,
                                phan_loai: phan_loai_search,
                                line: line_search,
                                shift: shift_search,
                                tinh_trang: tinh_trang,
                                status: status_search,
                                date_form: date_form,
                                date_to: date_to,
                                table: table_result + year
                            },
                            success: function(users) {
                                var data = [];
                                $.each(users.data, function(index, value) {
                                    var view = '<button type="button" value="' + value
                                        .id +
                                        '" data-bs-toggle="modal" data-bs-target="#modal-show" class="btn btn-primary editbtn btn-sm" id="view"><span class="icon-eye2"></span></button>';
                                    data.push([
                                        value.id,
                                        value.id_check_list_line,
                                        value.groups,
                                        value.check_list,
                                        value.cong_doan,
                                        value.phan_loai,
                                        value.line,
                                        value.shifts,
                                        value.name,
                                        value.part,
                                        value.status,
                                        value.problem,
                                        value.process,
                                        value.tinh_trang,
                                        value.date,
                                        view,
                                    ]);
                                });

                                var header =
                                    '<thead class="table-success" style="text-align: center; vertical-align:middle">' +
                                    '<tr style="text-align: center">' +
                                    '<th style="width:3%;text-align: center">ID</th>' +
                                    '<th style="width:3%;text-align: center">Line-type</th>' +
                                    '<th style="width:3%;text-align: center">Group</th>' +
                                    '<th style="width:6%;text-align: center">Check List</th>' +
                                    '<th style="width:6%;text-align: center">Công đoạn</th>' +
                                    '<th style="width:6%;text-align: center">Phân loại</th>' +
                                    '<th scope="col" style="text-align: center">Line</th>' +
                                    '<th scope="col" style="text-align: center">Shift</th>' +
                                    '<th scope="col" style="text-align: center">name</th>' +
                                    '<th scope="col" style="text-align: center">Part</th>' +
                                    '<th scope="col" style="text-align: center">Tình trạng</th>' +
                                    '<th scope="col" style="text-align: center">Vấn đề</th>' +
                                    '<th scope="col" style="text-align: center">Tiến độ</th>' +
                                    '<th scope="col" style="text-align: center">Status</th>' +
                                    '<th style="width:7% ; text-align: center">Date</th>' +
                                    '<th scope="col" style="text-align: center">view</th>' +
                                    '</tr>'
                                '</thead>'

                                $('#table_check_list_search').html(header);
                                tables = $('#table_check_list_search').DataTable({
                                    data: data,
                                    "info": true,
                                    'ordering': false,
                                    'autowidth': true,
                                    "dom": 'Bfrtip',
                                    /* select: {
                                        style: 'multi',
                                    }, */

                                });
                            }
                        });

                    }
                }
            });

            $(document).on('click', '#Search_all', function(e) {
                e.preventDefault();
                if (tables) {
                    $('#table_check_list_search').DataTable().destroy();
                }
                var check_list_search = $('#check_list_search option:selected').text();
                var phan_loai_search = $('#phan_loai_search option:selected').text();
                var cong_doan_search = $('#cong_doan_search option:selected').text();
                var line_type_search = $('#line_type_search option:selected').text();
                var line_search = $('#line_search option:selected').text();
                var shift_search = $('#shift_search option:selected').text();
                var tinh_trang = $('#tinh_trang_search option:selected').text();
                var status_search = $('#status_search option:selected').text();
                var date_form = Convertdate($('#date_form').val());
                var date_to = Convertdate($('#date_to').val());

                var year = Convert_year($('#date_form').val());
                var month_form = Convert_month($('#date_form').val());
                var month_to = Convert_month($('#date_to').val());

                if ($('#date_form').val() == 0 || $('#date_to').val() == 0) {
                    alert('Vui lòng chọn thời gian kiểm tra');
                } else {
                    if (month_form != month_to) {
                        alert('Thời gian kiểm tra vượt quá 1 tháng');
                    } else {
                        $.ajax({
                            type: "POST",
                            url: "{{ route('search.check.list') }}",
                            dataType: 'json',
                            data: {
                                check_list: check_list_search,
                                cong_doan: cong_doan_search,
                                line_type: line_type_search,
                                phan_loai: phan_loai_search,
                                line: line_search,
                                shifts: shift_search,
                                tinh_trang: tinh_trang,
                                status: status_search,
                                date_form: date_form,
                                date_to: date_to,
                                table: table_result_detail + year
                            },
                            success: function(users) {
                                var data = [];
                                $.each(users.data, function(index, value) {
                                    var view = '<button type="button" value="' + value
                                        .id_check_list +
                                        '" data-bs-toggle="modal" data-bs-target="#modal-show" class="btn btn-primary editbtn btn-sm" id="view"><span class="icon-eye2"></span></button>';
                                    data.push([
                                        value.id,
                                        tab,
                                        value.check_list,
                                        value.cong_doan,
                                        value.phan_loai,
                                        value.line,
                                        value.shifts,
                                        value.name,
                                        value.part,
                                        value.comment,
                                        value.status,
                                        value.problem,
                                        value.process,
                                        value.tinh_trang,
                                        value.date,
                                        view,

                                    ]);
                                });

                                var header =
                                    '<thead class="table-success" style="text-align: center; vertical-align:middle">' +
                                    '<tr style="text-align: center">' +
                                    '<th style="width:3%;text-align: center">ID</th>' +
                                    '<th style="width:3%;text-align: center">Group</th>' +
                                    '<th style="width:6%;text-align: center">Check List</th>' +
                                    '<th style="width:6%;text-align: center">Công đoạn</th>' +
                                    '<th style="width:6%;text-align: center">Phân loại</th>' +
                                    '<th scope="col" style="text-align: center">Line</th>' +
                                    '<th scope="col" style="text-align: center">Shift</th>' +
                                    '<th scope="col" style="text-align: center">name</th>' +
                                    '<th scope="col" style="text-align: center">Part</th>' +
                                    '<th scope="col" style="text-align: center">Comment</th>' +
                                    '<th scope="col" style="text-align: center">Tình trạng</th>' +
                                    '<th scope="col" style="text-align: center">Vấn đề</th>' +
                                    '<th scope="col" style="text-align: center">Tiến độ</th>' +
                                    '<th scope="col" style="text-align: center">Status</th>' +
                                    '<th style="width:7% ; text-align: center">Date</th>' +
                                    '<th scope="col" style="text-align: center">view</th>' +
                                    '</tr>'
                                '</thead>'

                                $('#table_check_list_search').html(header);
                                tables = $('#table_check_list_search').DataTable({
                                    data: data,
                                    "info": false,
                                    'ordering': false,
                                    'autowidth': true,
                                    "dom": 'Bfrtip',
                                    /* select: {
                                        style: 'multi',
                                    }, */

                                });
                            }
                        });
                    }
                }
            });

            $(document).on('click', '#view', function(e) {
                e.preventDefault();
                var id = $(this).val();
                var year = Convert_year($('#date_form').val());
                table_edit = table_result_detail + year,
                    $.ajax({
                        type: "post",
                        url: "{{ route('search.check.list.view') }}",
                        dataType: "json",
                        data: {
                            id: id,
                            table: table_result_detail + year,
                        },
                        success: function(users) {
                            var colum = users.colums;
                            var count = 0;
                            $.each(colum, function(index, value) {
                                if (value != 'id') {
                                    /* if (value == 'status') {
                                        count++;
                                        colum_table.push([count, value,
                                            '{"option1":"OK","option2":"NG"}'
                                        ]);
                                    } else {
                                        if (value == 'process') {
                                            count++;
                                            colum_table.push([count, value,
                                                '{"option1":"Complate","option2":"Pending","option3":"Improgress"}'
                                            ]);

                                        } else { */
                                    count++;
                                    colum_table.push([count, value]);
                                    /*  } */

                                    /* } */
                                }
                            });
                            $('#table_check_list_view').DataTable({
                                data: users.data,
                                "info": false,
                                'ordering': false,
                                'autowidth': true,
                                "dom": 'Bfrtip',
                                columns: colum.map(function(columnMane) {
                                    return {
                                        title: columnMane,
                                        data: columnMane,
                                    };
                                })
                            });



                        }
                    });

            });

            $(document).on('click', '#close-model', function(e) {
                e.preventDefault();

                $('#table_check_list_view').DataTable().clear().destroy();
                $('#table_check_list_view thead tr').remove();
                // $('#table_check_list_view').empty();
                // $('#modal-show').modal('hide');
            });

            function editTable(table_edit, table) {

                $('#' + table_edit).Tabledit({
                    url: "check-list/edit-table/" + table,
                    method: 'POST',
                    dataType: 'json',
                    columns: {
                        identifier: [0, 'id'],
                        editable: colum_table,
                    },
                    restoreButton: true,
                    deleteButton: false,
                    uploadButton: false,
                    onSuccess: function(data, textStatus, jqXHR) {
                        if (data.action == 'delete') {
                            $('#' + data.id).remove();
                            $('#' + table_id).DataTable().ajax.reload();
                        }

                    }
                });
            }

            $('#table_check_list_view').on('draw.dt', function() {
                editTable('table_check_list_view', table_edit);
            });

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                        'content')
                }
            });
        });
    </script>
@endsection
