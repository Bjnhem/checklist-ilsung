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
            <table class="table text-center table-hover table-sm" style="width:100%" id="table-limit">
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
                        <div id="carousel-modal" class="carousel slide modal_image_slider" data-bs-interval="false">    
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
                            <button class="carousel-control-prev" type="button" data-bs-target="#carousel-modal"
                                data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carousel-modal"
                                data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
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
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
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

<script>
    $('#model').on('change', function() {
        var model_search = $(this).val();
        // console.log(model_search);
        // localStorage.setItem('active_limit_Item', null);
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
    list_limit = document.querySelectorAll("#table-limit tbody td");
    list_limit.forEach((item) => item.addEventListener('click', active_limit_item));
    image_list = document.querySelectorAll(".image_slide img");
    image_list.forEach((item) => item.addEventListener('dblclick', show_image));

    function active_limit_item() {
        var itemId = this.id;
        list_limit.forEach((item) => {
            item.classList.remove("table-active");
        });
        this.classList.add("table-active");
        localStorage.setItem('active_limit_Item', itemId);
        console.log(itemId);
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
        /* var image_link = this.src;
        var image_show = document.querySelector(".modal-img");
        image_show.src = image_link; */
        $('#modal-image-show').modal('show');
    }
</script>
