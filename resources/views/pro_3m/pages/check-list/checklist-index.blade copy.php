@extends('pro_3m.pages.layout')
@section('content')
    <div class="container-fluid" style="margin-top: 1px;">
        <!-- Content Row -->
        <div class="card mb-4">
            <div class="card-header py-3">
                <h5 class="text-primary mx-3"><b><i class="icon-line-check-square" style="padding-right: 5px"></i>CHECK LIST
                        PRO-3M</b>
                </h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <ul id="myTab" class="nav nav-tabs boot-tabs mb-5">
                        <li class="nav-item"> <button class="nav-link  active" id="FTG" data-bs-toggle="tab"
                                data-bs-target="#study-post" type="button" role="tab" aria-controls="nav-home"
                                aria-selected="true">FTG</button></li>
                        <li class="nav-item">
                            <button class="nav-link" id="GLASS" data-bs-toggle="tab" data-bs-target="#all-post"
                                type="button" role="tab" aria-controls="nav-disabled"
                                aria-selected="false">GLASS</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link" id="PAD" data-bs-toggle="tab" data-bs-target="#smart-post"
                                type="button" role="tab" aria-controls="nav-disabled"
                                aria-selected="false">PAD</button>
                        </li>

                    </ul>
                </div>

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
                            <option value="">---</option>
                            <option value="Staff">Staff</option>
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
                        <input name="gen" type="number" id="gen" class="form-control" placeholder="Nhập gen...">
                    </div>
                    <div class="col-sm-2">
                        <span>Tên:</span>
                        <input name="name" type="text" id="name" class="form-control" placeholder="Nhập tên...">
                    </div>
                    <div class="col-sm-2">
                        <span>Bộ phận:</span>
                        <input name="part" type="text" id="part" class="form-control">
                    </div>
                    <div class=" col-sm-2 col-md-2  bottommargin-sm">
                        <label for="">Date Search</label>

                        <div class="input-daterange component-datepicker multidate input-group">
                            <input type="text" value="" class="form-control text-start" id="date"
                                placeholder="MM/DD/YYYY">
                        </div>
                    </div>
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



        <div class="card mb-4">
            <div class="card-header py-3">
                <h5 class="text-primary mx-3"><b><i class="icon-line-database" style="padding-right: 5px"></i>DATA CHECK
                        LIST PRO-3M</b>
                </h5>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-sm-2">
                        <span>Checklist:</span>
                        <select name="" id="check_list_search" class="form-select">
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <span>Loại Line:</span>
                        <select name="line_type" id="line_type_search" class="form-select">
                        </select>
                    </div>

                    <div class="col-sm-2">
                        <span>Công đoạn:</span>
                        <select name="cong_doan" id="cong_doan_search" class="form-select">
                        </select>
                    </div>

                    <div class="col-sm-2">
                        <span>Phân Loại:</span>
                        <select name="phan_loai_search" id="phan_loai_search" class="form-select">
                        </select>
                    </div>

                    <div class="col-sm-2">
                        <span>Line:</span>
                        <select name="line" id="line_search" class="form-select">
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <span> Status: </span>
                        <select name="status" id="status_search" class="form-select">
                            <option value="">---</option>
                            <option value="ON">OK</option>
                            <option value="OFF">NG</option>
                        </select>
                    </div>



                    <div class="col-sm-12">
                        <br>
                    </div>

                    <div class="col-sm-2">
                        <span>
                            <br>
                        </span>
                        <button id="Search" class="form-control btn-success"><i
                                class="icon-line-search"></i>Search</button>
                    </div>

                    <div class="col-sm-2">
                        <span>
                            <br>
                        </span>
                        <button id="Search_all" class="form-control btn-success"><i class="icon-line-search"></i>Search
                            all
                        </button>
                    </div>

                    <div class=" col-sm-4 col-md-4  bottommargin-sm">
                        <label for="">Date Search</label>
                        <div class="input-daterange component-datepicker input-group">
                            <input type="text" value="" class="form-control text-start" id="date_form"
                                placeholder="MM/DD/YYYY">
                            <div class="input-group-text">to</div>
                            <input type="text" value="" class="form-control text-start" id="date_to"
                                placeholder="MM/DD/YYYY">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <span> Tình trạng line: </span>
                        <select name="status" id="tinh_trang_search" class="form-select">
                            <option value="">---</option>
                            <option value="ON">ON</option>
                            <option value="OFF">OFF</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <span>Shift:</span>
                        <select name="shift" id="shift_search" class="form-select">
                            <option value="">---</option>
                            <option value="Staff">Staff</option>
                            <option value="Shift1A">Shift1A</option>
                            <option value="Shift2A">Shift2A</option>
                        </select>
                    </div>

                </div>
                <br>

                <table id="table_check_list_search" class="table table-bordered table-hover"
                    style="width:100%;border-collapse:collapse;">
                </table>

            </div>

        </div>
        {{-- model show check list --}}

        <div class="modal" id="modal-show">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="text-primary mx-3"><b><i class="icon-line-database"
                                    style="padding-right: 5px"></i>DATA
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


    </div>
@endsection

@section('admin-js')
    <script>
        $(document).ready(function() {
            var tab = @json($view);
            var colum_table = [];
            var tables;
            var table_edit;
            

            localStorage.setItem('activeItem', 'overview');
            var activeItem = localStorage.getItem('activeItem');
            let list = document.querySelectorAll(".sidebar-body-menu a");

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
            list.forEach((item) => item.addEventListener('click', activeLink));
            show_check_list(tab, );

            var table = 'result';
            var table_2 = 'result_detail'
            var table_result = tab + '_' + table;
            var table_result_detail = tab + '_' + table_2;
            var buttom = document.querySelectorAll("#myTab button");
            buttom.forEach((item) => item.addEventListener('click', function(event) {
                tab = this.id;
                table_result = tab + '_' + table;
                table_result_detail = tab + '_' + table_2;
                show_check_list(tab);
            }));

            function show_check_list(tab) {
                $.ajax({
                    type: "GET",
                    url: "{{ route('show.check.list') }}",
                    dataType: "json",
                    data: {
                        group: tab,
                    },
                    success: function(response) {
                        $('#check_list').empty();
                        $('#cong_doan').empty();
                        $('#line_type').empty();
                        $('#phan_loai').empty();
                        $('#line').empty();
                        $('#check_list_search').empty();
                        $('#cong_doan_search').empty();
                        $('#line_type_search').empty();
                        $('#phan_loai_search').empty();
                        $('#line_search').empty();
                        $('#check_list').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        var data1 = [];
                        var data2 = [];
                        $.each(response.data, function(index, value) {
                            $('#check_list').append($('<option>', {
                                value: value.id,
                                text: value.check_list,
                            }));
                        });

                        $.each(response.gen_list, function(index, value) {
                            data1.push(value.name);
                            data2.push(value.gen);
                        });

                        var data3 = data2.map(function(number) {
                            return number.toString();
                        })
                        $("#name").autocomplete({
                            source: data1
                        });
                        $("#gen").autocomplete({
                            source: data3
                        });
                        $("#part").autocomplete({
                            source: response.part_list
                        });


                        $('#check_list_search').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data, function(index, value) {
                            $('#check_list_search').append($('<option>', {
                                value: value.id,
                                text: value.check_list,
                            }));
                        });
                    }
                });
            }



            $('#check_list').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('line.type.search') }}',
                    data: {
                        id: check_list_search,
                    },
                    success: function(response) {
                        $('#phan_loai').empty();
                        $('#cong_doan').empty();
                        $('#line_type').empty();
                        $('#line').empty();
                        $('#table-check-list').DataTable().destroy();
                        $('#line_type').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data, function(index, value) {
                            $('#line_type').append($('<option>', {
                                value: value.id,
                                text: value.line_type,
                            }));
                        });
                    }
                });

            });

            $('#line_type').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('cong.doan.search') }}',
                    data: {
                        id: check_list_search,
                    },
                    success: function(response) {
                        $('#phan_loai').empty();
                        $('#cong_doan').empty();
                        $('#line').empty();
                        $('#table-check-list').DataTable().destroy();
                        $('#cong_doan').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data, function(index, value) {
                            $('#cong_doan').append($('<option>', {
                                value: value.id,
                                text: value.cong_doan,
                            }));
                        });
                    }
                });

            });

            $('#cong_doan').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('phan.loai.search') }}',
                    data: {
                        id: check_list_search,
                        groups: tab,
                    },
                    success: function(response) {
                        $('#phan_loai').empty();
                        $('#line').empty();
                        $('#table-check-list').DataTable().destroy();
                        $('#phan_loai').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data2, function(index, value) {
                            $('#phan_loai').append($('<option>', {
                                value: value.id,
                                text: value.phan_loai,
                            }));
                        });

                        $('#line').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data1, function(index, value) {
                            $('#line').append($('<option>', {
                                value: value.id,
                                text: value.line,
                            }));
                        });
                    }
                });
            });

            $('#phan_loai').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('check.list.search') }}',
                    data: {
                        id: check_list_search,
                        groups: tab,
                    },
                    success: function(response) {
                        $('#table-check-list').DataTable().destroy();
                        var count = 0;
                        var data = [];
                        $.each(response.data_check_list, function(index, value) {
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
                var group = tab;
                var check_list = $('#check_list option:selected').text();
                var cong_doan = $('#cong_doan option:selected').text();
                var line_type = $('#line_type option:selected').text();
                var phan_loai = $('#phan_loai option:selected').text();
                var line = $('#line option:selected').text();
                var shifts = $('#shift option:selected').text();
                var tinh_trang = $('#status option:selected').text();
                var name = $('#gen').val() + ' - ' + $('#name').val();
                var part = $('#part').val();
                var problems_1 = "";
                var status_1 = 'OK';
                var process_1 = '';
                var date = Convertdate($('#date').val());
                var year = Convert_year($('#date').val());
                var table_1 = table_result + year;
                var table_2 = table_result_detail + year;
                console.log(table_1);
                console.log(table_2);

                if (line == '---' || shifts == '---' || tinh_trang == '---' || phan_loai == '---' || name ==
                    ' - ' || part == '' || $('#date').val() == 0) {
                    alert('Bạn điền thiếu thông tin');
                } else {
                    $('#table-check-list').DataTable().rows().every(function() {
                        var status = $(this.node()).find('select[name="status"] option:selected')
                            .text();
                        var process = $(this.node()).find('select[name="process"] option:selected')
                            .text();

                        if (status == 'NG') {
                            status_1 = "NG";
                            process_1 = process;
                        }
                    });
                    var data3 = {
                        groups: group,
                        check_list: check_list,
                        phan_loai: phan_loai,
                        cong_doan: cong_doan,
                        line_type: line_type,
                        line: line,
                        shifts: shifts,
                        name: name,
                        part: part,
                        tinh_trang: tinh_trang,
                        status: status_1,
                        problem: problems_1,
                        process: process_1,
                        date: date,
                    }

                    $.ajax({
                        type: "POST",
                        url: "{{ route('save.check.list', ':table') }}".replace(':table',
                            table_1),
                        dataType: 'json',
                        data: data3,
                        success: function(response) {
                            if (response.status == 400) {
                                alert("Checklist đã tồn tại")
                            } else {
                                var id = response.id;
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

            $('#check_list_search').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('line.type.search') }}',
                    data: {
                        id: check_list_search,
                    },
                    success: function(response) {
                        $('#cong_doan_search').empty();
                        $('#phan_loai_search').empty();
                        $('#line_type_search').empty();
                        $('#line_search').empty();
                        // $('#table_check_list_search').DataTable().destroy();
                        $('#line_type_search').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data, function(index, value) {
                            $('#line_type_search').append($('<option>', {
                                value: value.id,
                                text: value.line_type,
                            }));
                        });
                    }
                });

            });

            $('#line_type_search').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('cong.doan.search') }}',
                    data: {
                        id: check_list_search,
                    },
                    success: function(response) {
                        $('#cong_doan_search').empty();
                        $('#phan_loai_search').empty();
                        $('#line_search').empty();
                        // $('#table-check-list').DataTable().destroy();
                        $('#cong_doan_search').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data, function(index, value) {
                            $('#cong_doan_search').append($('<option>', {
                                value: value.id,
                                text: value.cong_doan,
                            }));
                        });
                    }
                });

            });

            $('#cong_doan_search').on('change', function() {
                var check_list_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('phan.loai.search') }}',
                    data: {
                        id: check_list_search,
                    },
                    success: function(response) {
                        $('#phan_loai_search').empty();
                        $('#line_search').empty();
                        // $('#table_check_list_search').DataTable().destroy();
                        $('#line_search').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data1, function(index, value) {
                            $('#line_search').append($('<option>', {
                                value: value.id,
                                text: value.line,
                            }));
                        });
                        $('#phan_loai_search').append($('<option>', {
                            value: null,
                            text: '---',
                        }));
                        $.each(response.data2, function(index, value) {
                            $('#phan_loai_search').append($('<option>', {
                                value: value.id,
                                text: value.phan_loai,
                            }));
                        });
                    }
                });
            });

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
