@extends('pro_3m.pages.layout')
@section('content')
    <div class="container-fluid" style="margin-top: 1px;">
        <!-- Content Row -->
        <div class="card mb-4">
            <div class="card-header py-3">
                <h5 class="text-primary mx-3"><b><i class="icon-line-check-square" style="padding-right: 5px"></i>PLAN CHECK LIST
                        EQM</b>
                </h5>
            </div>
            <div class="card-body">

                <div class="row">
                    <div class=" col-sm-2 col-md-2  bottommargin-sm">
                        <label for="">Date Search</label>
                        <div class="input-daterange component-datepicker multidate input-group">
                            <input type="text" value="" class="form-control text-start" id="date_form"
                                placeholder="MM/DD/YYYY">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <span>
                            <br>
                        </span>
                        <button id="add-plan-checklist" class="form-control btn-success"><i
                                class="icon-line-check"></i>Created plan
                        </button>
                    </div>


                </div>
                <br>
                <table id="table_check_list_search" class="table table-bordered table-hover"
                    style="width:100%;border-collapse:collapse;">
                </table>
            </div>
        </div>

    </div>
@endsection

@section('admin-js')
    <script>
        $(document).ready(function() {
            var colum_table = [];
            var tables;
            var currentDate = new Date();
            var date = currentDate.toISOString().split('T')[0];
            $('#date_form').val(date);

            localStorage.setItem('activeItem', 'Plan');
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

            function Convertdate(date) {
                var data = date.split('/');
                var dateconvert = data[2] + '-' + data[0] + '-' + data[1];
                return dateconvert;
            }

            function Convert_year(date) {
                var data = date.split('/');
                var dateconvert = data[2] + '_' + data[0];
                return dateconvert;
            }

            // Show_plan_checklist();

            function Show_plan_checklist() {

                if (tables) {
                    $('#table_check_list_search').DataTable().destroy();
                }
                var line_search = "";
                var shift_search = "";
                var Status_search = "";
                var date_form = ($('#date_form').val());
                if ($('#date_form').val() == 0) {
                    alert('Vui lòng chọn thời gian kiểm tra');
                } else {
                    $.ajax({
                        type: "POST",
                        url: "{{ route('check.list.overview') }}",
                        dataType: 'json',
                        data: {
                            line: line_search,
                            shift: shift_search,
                            date_form: date_form,
                            Status: Status_search,
                        },
                        success: function(users) {
                            var count = 0;
                            var data = [];
                            var colum = [];
                            var data;
                            console.log(users.data);
                            $.each(users.data, function(index, value) {
                                count++;
                                if (value.Check_status != "Pending") {
                                    var view = '<button type="button" value="' + value
                                        .id +
                                        '" data-bs-toggle="modal" data-bs-target="#modal-check" class="btn btn-primary view-show check editbtn btn-sm" id="' +
                                        value.ID_checklist + '">View</button>' +
                                        ' <input type="hidden" value="' + value.ID_checklist +
                                        '" id="' + value.id + '">';
                                } else {
                                    var view = '<button type="button" value="' + value
                                        .id +
                                        '" data-bs-toggle="modal" data-bs-target="#modal-check" class="btn btn-danger view-check check editbtn btn-sm" id="' +
                                        value.ID_checklist + '">Check</button>' +
                                        '<input type="hidden" value ="' + value.ID_checklist +
                                        '" id="' + value.id + '">';
                                }
                                data.push([
                                    count,
                                    value.Locations,
                                    value.Model,
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
                                '<th style="text-align: center">Model</th>' +
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
                                // "dom": 'Bfrtip',
                                select: {
                                    style: 'single',
                                },

                            });
                        }
                    });
                }
            };

            $(document).on('click', '#add-plan-checklist', function(e) {
                e.preventDefault();
                var date_created = $('#date_form').val();
                if ($('#date_form').val() == 0) {
                    alert('Bạn điền thiếu thông tin');
                } else {
                    var data = {
                        date: date,
                    }
                    $.ajax({
                        type: "POST",
                        url: "{{ route('admin.add.plan.checklist') }}",
                        dataType: 'json',
                        data: data,
                        success: function(response) {
                            if (response.status == 200) {
                                alert("Số check list đã tạo: " + response.count)
                            } else {
                                alert("Tạo Checklist lỗi")
                            }
                        }

                    });
                }
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
