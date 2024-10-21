<div class="row video-hoat-dong">
   {{--  <h2>Samsung Vietnam News</h2>   --}}
    <div class="col-2">
        <div class="board_news video">
            <h4>Limit Item</h4>
            <ul class="item" id="video-smart">
                @foreach ($video as $item)
                    <li id="{{ $item->video_title }}" class="{{ $item->image }}">
                        <div class="row list-video">
                            <div class="col-4">
                                <div class="thumb_inner">
                                    <img src="{{ $item->image }}" alt="">
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="inner">
                                    <p>{{ $item->title }}</p>
                                    <p>Tháng {{ $item->month }}</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <hr>
                @endforeach
            </ul>
        </div>

    </div>
    <div class="col-10" id="video-container">
        @foreach ($video_active as $item)
            <video id="myvideo" src="{{ asset('smart-ver2/img/smart/video') . '/' . $item->video_title }}"
                controls="" preload="metadata" controlslist="nodownload" poster="{{ $item->image }}"></video>
        @endforeach
        <h4>Remark</h4>
        <p class="remark">Nội dung remark</p>
    </div>
</div>

<script>
    let videolist = document.querySelectorAll("#video-smart li");
    const video = document.getElementById("myvideo");
    var myvideo = document.createElement('video');

    function active_video(image, video_active) {
        video.controls = true;
        video.src = "{{ asset('smart-ver2/img/smart/video') }}" + '/' + video_active;
        video.poster = image;
        video.id = 'myvideo';
        video.type = 'video/mp4';
        $("#video-container").innerHTML = '';
        $("#video-container").appendChild = (video);
    }
    videolist.forEach((item) => item.addEventListener('click', function() {
        var video_title = this.id;
        var image_title = this.classList;
        active_video(image_title, video_title);
        video.play();
    }));
</script>
