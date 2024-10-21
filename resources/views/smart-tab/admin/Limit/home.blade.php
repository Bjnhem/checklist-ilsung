@extends('smart-tab.admin.admin-layout')

@section('content')
    <div class="container admin">
        <div class="modal" id="modal-show">
            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                <div class="modal-content">
                    {{-- <div class="modal-header">
                        @include('smart-ver2.pages.layout.header')
                    </div> --}}
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary close" data-bs-dismiss="modal">Close</button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="posts">
                                <div class="entry">
                                    <h1 class="title" id="tieu-de"></h1>
                                    <div class="top_area clearfix mt-3">
                                        <div class="meta">
                                            <div class="entry-meta">
                                                <ul>
                                                    <li id="time-update"></li>
                                                    <li id="tac-gia"></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <hr>
                                    </div>
                                    <div class="entry-content content-1 my-5" id="noi-dung">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade " id="upload-image" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="input-group">
                                <input type="hidden" name="id" value="" id="image_id">
                                <input id="thumbnail" class="form-control" type="text" name="filepath"
                                    id="image_path_text">
                                <input type="button" id="lfm-2" data-input="thumbnail" data-preview="holder"
                                    value="Chọn image" class="btn btn-primary">

                                <div class="input-group-append">
                                    <button class="btn btn-success upload-image" type="submit"><i
                                            class="icon-line-upload"></i>
                                        <span class="hidden-xs">Upload</span></button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <div class="modal" id="modal-created">

            <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <form action="" method="post" enctype="multipart/form-data" id="create-post">
                                @csrf

                                <div class="form-group">
                                    <label class="form-check-label" for="title-creat">Tiêu đề bài viết</label>
                                    <input type="text" name="title" id="title-creat" class="form-control">
                                </div>
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <div class="form-group mb-3">
                                            <label for="chuyen-muc">CHUYÊN MỤC</label>
                                            <select class="form-select" id="chuyen-muc">
                                                <option value="SMART" selected>SMART</option>
                                                <option>STUDY</option>
                                                <option>MIND</option>
                                                <option>ACTION</option>
                                                <option>RELATIONSHIO</option>
                                                <option>TARGET</option>
                                                <option>SÁCH</option>
                                                <option>CHÍNH SÁCH</option>
                                                <option>QUY ĐỊNH</option>
                                            </select>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="team_group">Team</label>
                                            <select class="form-select" id="team_group">
                                                <option value="SEVT" selected>SEVT</option>
                                                <option>CNC T</option>
                                                <option>Glass T</option>
                                                <option>Production T</option>
                                                <option>R&D T</option>
                                                <option>QC T</option>
                                                <option>Other T</option>
                                            </select>

                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="date_created">Thời gian</label>
                                            <select class="form-select" id="date_created">
                                                <option value="8">Tháng 8</option>
                                                <option value="9" selected>Tháng 9</option>
                                                <option value="10">Tháng 10</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label class="form-check-label" for="image-title">Ảnh title</label>
                                            <textarea id="image-title" class="form-control" style="height: 400px"></textarea>
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="form-check-label" for="content-creat">Nội Dung</label>
                                    <textarea id="content-creat" class="form-control" style="height: 400px"></textarea>
                                </div>

                            </form>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" id="created" class="btn btn-primary">Created</button>
                        <button type="button" class="btn btn-secondary close" data-bs-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>

        </div>
        <div class="modal fade" id="DeleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete Bài viết</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Confirm to Delete Data Bài viết ?</h4>
                        <input type="hidden" id="deleteing_id">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary delete-post">Yes Delete</button>
                    </div>
                </div>
            </div>
        </div>

        {{-- <div class="container mt-5"> --}}
        <ul id="myTab" class="nav nav-tabs boot-tabs">
            <li class="nav-item">
                <button class="nav-link " id="ALL" data-bs-toggle="tab" data-bs-target="#view" type="button"
                    role="tab" aria-controls="nav-disabled" aria-selected="false">Overview
                    Post</button>
            </li>
            <li class="nav-item">
                <button class="nav-link active" id="SMART" data-bs-toggle="tab" data-bs-target="#data"
                    type="button" role="tab" aria-controls="nav-disabled" aria-selected="false">Update
                    Data</button>
            </li>

        </ul>


        <div class="tab-content mt-4" id="nav-tabContent">
            {{-- =====  limit view ===== --}}
            <div class="tab-pane fade" id="view" role="tabpanel" aria-labelledby="all" tabindex="0">
                <div class="card card-ke-hoach">
                    <div class="card-body" id="limit-data">
                        <div class="row">
                            <div class="col-xl-2 col-3 limit-item">
                                <div class="form-group ">
                                    <label for="model">chọn model</label>
                                    <select name="" id="model" class="form-select">
                                        @foreach ($model_list as $item)
                                            <option value="{{ $item }}"> {{ $item }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <label>Limit Item</label>
                                <div class="table-limit table-responsive">
                                    <table class="table text-center table-hover table-sm" style="width:100%"
                                        id="table-limit">
                                        <tbody>
                                            @foreach ($item_list as $index => $item)
                                                @if ($index == 0)
                                                    <tr>
                                                        <td class="table-active" id="{{ $item->id }}">
                                                            {{ $item->limit_item }}
                                                        </td>
                                                    </tr>
                                                @else
                                                    <tr>
                                                        <td id="{{ $item->id }}">
                                                            {{ $item->limit_item }}
                                                        </td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <div class="col-xl-10 col-9" id="slider">
                                <div class="modal" id="modal-image-show">
                                    <div class="modal-dialog modal-dialog-scrollable modal-fullscreen">
                                        <div class="modal-content">
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary close"
                                                    data-bs-dismiss="modal">Close</button>
                                            </div>
                                            <div class="modal-body">
                                                <div id="carousel-modal" class="carousel slide modal_image_slider"
                                                    data-bs-interval="false">
                                                    <div class="carousel-inner">
                                                        @foreach ($image_list as $index => $item)
                                                            @if ($index == 0)
                                                                <div class="carousel-item active">
                                                                    <img src="{{ $item }}" alt="...">
                                                                </div>
                                                            @else
                                                                <div class="carousel-item">
                                                                    <img src="{{ $item }}" alt="...">
                                                                </div>
                                                            @endif
                                                        @endforeach

                                                    </div>
                                                    <button class="carousel-control-prev" type="button"
                                                        data-bs-target="#carousel-modal" data-bs-slide="prev">
                                                        <span class="carousel-control-prev-icon"
                                                            aria-hidden="true"></span>
                                                        <span class="visually-hidden">Previous</span>
                                                    </button>
                                                    <button class="carousel-control-next" type="button"
                                                        data-bs-target="#carousel-modal" data-bs-slide="next">
                                                        <span class="carousel-control-next-icon"
                                                            aria-hidden="true"></span>
                                                        <span class="visually-hidden">Next</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="carouselExample" class="carousel slide image_slide" data-bs-interval="false">

                                    <div class="carousel-inner">
                                        @foreach ($image_list as $index => $item)
                                            @if ($index == 0)
                                                <div class="carousel-item active">
                                                    <img src="{{ $item }}" alt="...">
                                                </div>
                                            @else
                                                <div class="carousel-item">
                                                    <img src="{{ $item }}" alt="...">
                                                </div>
                                            @endif
                                        @endforeach

                                    </div>
                                    <button class="carousel-control-prev" type="button"
                                        data-bs-target="#carouselExample" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button"
                                        data-bs-target="#carouselExample" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                                <div class="limit-remark">
                                    <label>Remark:</label>
                                    <div class="remark-title">
                                        <p class="remark">{{ $remark }}</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- =====  limit update data ===== --}}
            <div class="tab-pane fade show  active" id="data" role="tabpanel" aria-labelledby="all"
                tabindex="0">

                <div class="card card-ke-hoach table-responsive my-3">
                    <div class="card-header">
                        <div class="row mx-2 mt-2">
                            <div class="col-auto">
                                <form action="{{ route('table.update.data') }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="input-group">
                                        <input type="hidden" name="id" value="{{ $table }}">
                                        <input class="form-control" type="file" name="csv_file" accept=".csv"
                                            id="file-upload">
                                        <button class="btn btn-success" type="submit"><i class="icon-line-upload"></i>
                                            <span class="hidden-xs">Upload</span></button>

                                    </div>
                                </form>
                            </div>

                            <div class="col-6" style="text-align: end">
                                <button type="button" id="new-row-slider" class="btn btn-primary">Thêm
                                    dòng
                                    mới</button>
                                <button type="button" id="delete-row-slider" class="btn btn-danger">Xóa
                                    nhiều
                                    dòng</button>

                            </div>

                        </div>

                        <div class="row mx-2">
                            <div class="form-group col-auto">
                                <label for="find-model">chọn model</label>
                                <select name="" id="find-model" class="form-select">
                                    @foreach ($model_list as $item)
                                        <option value="{{ $item }}"> {{ $item }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="card-body ">
                        <table class="table table-bordered table-hover table-sm " id="table-slider" style="width:100%">
                            <thead class="table-success"></thead>
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
            var route_prefix = "laravel-filemanager";
            $('#lfm').filemanager('image', {
                prefix: route_prefix
            });
            $('#model').val(@json($model));
            var active_limit_Item = localStorage.getItem('active_limit_Item');
            let list_limit = document.querySelectorAll("#table-limit tbody td");
            image_list = document.querySelectorAll(".image_slide img");
            list_limit.forEach((item) => item.addEventListener('click', active_limit_item));
            image_list.forEach((item) => item.addEventListener('dblclick', show_image));

            if (activeItem) {
                var selectedItem = document.getElementById(activeItem);
                if (selectedItem) {
                    selectedItem.classList.add('table-active');
                }
            }

            function active_limit_item() {
                var itemId = this.id;
                list_limit.forEach((item) => {
                    item.classList.remove("table-active");
                });
                this.classList.add("table-active");
                localStorage.setItem('active_limit_Item', itemId);
                $.ajax({
                    type: "GET",
                    url: '{{ route('limit.item.search') }}',
                    data: {
                        limit_item: itemId,
                    },
                    success: function(response) {
                        $('#slider').html(response);
                    }
                });
            }

            function show_image() {
                $('#modal-image-show').modal('show');
            }


            $('#model').on('change', function() {
                var model_search = $(this).val();
                $.ajax({
                    type: "GET",
                    url: '{{ route('model.search') }}',
                    data: {
                        model: model_search,
                    },
                    success: function(response) {
                        $('#limit-data').html(response);
                        $('#model').val(model_search);
                    }
                });

            });
        });
    </script>

    <script>
        $(document).ready(function() {
            var table_slider = 'limit_table';
            var slider_id = 'table-slider';
            var colum_table = [];
            var tables;
            var table;
            var table_id;

            // console.log(table);
            var route_prefix = "laravel-filemanager";
            $('#lfm-2').filemanager('image', {
                prefix: route_prefix
            });

            var image_path = document.getElementById('image_path_text');

            $(document).on('click', '#lfm-2', function(e) {
                e.preventDefault();
                document.getElementById('upload-file').style.display = 'block';
            });

            data_table_view(table_slider, slider_id, 'all');

            function editTable() {
                $('#' + table_id).Tabledit({
                    url: "admin-dashboard/table/edit-table/" + table,
                    method: 'POST',
                    dataType: 'json',
                    columns: {
                        identifier: [0, 'id'],
                        editable: colum_table,
                    },
                    restoreButton: false,
                    deleteButtom: false,
                    uploadButtom: true,
                    onSuccess: function(data, textStatus, jqXHR) {
                        if (data.action == 'delete') {
                            $('#' + data.id).remove();
                            $('#' + table_id).DataTable().ajax.reload();
                        }

                    }
                });
            }

            function data_table_view(table, id_table, model_search) {

                $.ajax({
                    type: "GET",
                    url: '{{ route('admin.limit.list') }}',
                    dataType: "json",
                    data: {
                        table: table,
                        model: model_search,
                    },
                    success: function(users, ) {
                        var colum = users.colums;
                        colum_table = [];
                        var count = 0;
                        var data = [];
                        $.each(users.colums, function(index, value) {
                            if (value != 'id') {
                                count++;
                                colum_table.push([count, value]);
                            }
                        });

                        tables = $('#' + id_table).DataTable({
                            data: users.data,
                            "info": false,
                            'ordering': false,
                            'autowidth': true,
                            "dom": 'Bfrtip',

                            select: {
                                style: 'multi',
                            },

                            columns: colum.map(function(columnMane) {
                                return {
                                    title: columnMane,
                                    data: columnMane,
                                };
                            })


                        });

                    }
                });
            }

            $('#find-model').on('change', function() {
                var model_search = $(this).val();
                tables.destroy();
                data_table_view(table_slider, slider_id, model_search);
                table_id = slider_id;
                table = table_slider;
                editTable();
            });

            $(document).on('click', '#new-row-slider', function(e) {
                e.preventDefault();
                var model = table_slider;
                $.ajax({
                    type: "GET",
                    url: "{{ route('table.new_row') }}",
                    dataType: "json",
                    data: {
                        table: model,
                    },
                    success: function(users, ) {
                        var colum = users.colums;
                        var count = 0;
                        colum_table = [];
                        $.each(colum, function(index, value) {
                            if (value != 'id') {
                                count++;
                                colum_table.push([count, value]);
                            }
                        });

                        var table = $('#' + slider_id).DataTable();
                        table.clear().rows.add(users.data).draw();
                    }
                });
            });


            $(document).on('click', '#delete-row-slider', function(e) {
                e.preventDefault();
                var model = table_slider;
                var rowSelect = tables.rows('.selected').data();
                var idsrow = rowSelect.toArray().map(row => row.id);
                // console.log(idsrow);
                $.ajax({
                    type: "GET",
                    url: "{{ route('table.delete_row') }}",
                    dataType: "json",
                    data: {
                        table: model,
                        rowId: idsrow,
                    },
                    success: function(users, ) {
                        var colum = users.colums;
                        var count = 0;
                        colum_table = [];
                        $.each(colum, function(index, value) {
                            if (value != 'id') {
                                count++;
                                colum_table.push([count, value]);
                            }
                        });
                        var tables = $('#' + slider_id).DataTable();
                        tables.clear().rows.add(users.data).draw();
                    }
                });
            });

            $(document).on('click', '#upload-image', function(e) {
                e.preventDefault();
                // // console.log($('#thumbnail').val());
                // var table_model = $("#myTab .nav-link.active").attr('id');
                var image_path = $('#thumbnail').val();

                table = table_slider;
                table_id = slider_id;
                $.ajax({
                    type: "GET",
                    url: "{{ route('limit.upload.image') }}",
                    dataType: "json",
                    data: {
                        id: $('#image_id').val(),
                        table: table,
                        filepath: image_path,
                    },
                    success: function(users, ) {
                        var colum = users.colums;
                        var count = 0;
                        colum_table = [];
                        $.each(colum, function(index, value) {
                            if (value != 'id') {
                                count++;
                                colum_table.push([count, value]);
                            }
                        });
                        $('#upload-image').modal('hide');
                        var tables = $('#' + table_id).DataTable();
                        tables.clear().rows.add(users.data).draw();

                    }
                });
            });


            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                        'content')
                }
            });

            $('#' + slider_id).on('draw.dt', function() {
                table_id = slider_id;
                table = table_slider;
                editTable();
            });
        });
    </script>
@endsection
