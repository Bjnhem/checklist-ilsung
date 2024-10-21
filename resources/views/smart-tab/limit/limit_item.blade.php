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
<script>
    
    image_list = document.querySelectorAll(".image_slide img");
    image_list.forEach((item) => item.addEventListener('dblclick', show_image));
    function show_image() {
       /*  var image_link = this.src;
        var image_show = document.querySelector(".modal-img");
        image_show.src = image_link; */
        $('#modal-image-show').modal('show');
    }
</script>
