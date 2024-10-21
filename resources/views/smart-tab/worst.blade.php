@extends('smart-tab.layout')
@section('header')
    @include('smart-tab.header')
@endsection
@section('content')
@endsection

@section('chartjs')
    <script>
        (function() {
            var userDdBtnList = document.querySelectorAll('.dropdown-btn');
            var userDdList = document.querySelectorAll('.users-item-dropdown');
            var layer = document.querySelector('.layer');

            if (userDdList && userDdBtnList) {
                var _iterator3 = _createForOfIteratorHelper(userDdBtnList),
                    _step3;

                try {
                    for (_iterator3.s(); !(_step3 = _iterator3.n()).done;) {
                        var userDdBtn = _step3.value;
                        userDdBtn.addEventListener('click', function(e) {
                            layer.classList.add('active');

                            var _iterator4 = _createForOfIteratorHelper(userDdList),
                                _step4;

                            try {
                                for (_iterator4.s(); !(_step4 = _iterator4.n()).done;) {
                                    var userDd = _step4.value;

                                    if (e.currentTarget.nextElementSibling == userDd) {
                                        if (userDd.classList.contains('active')) {
                                            userDd.classList.remove('active');
                                        } else {
                                            userDd.classList.add('active');
                                        }
                                    } else {
                                        userDd.classList.remove('active');
                                    }
                                }
                            } catch (err) {
                                _iterator4.e(err);
                            } finally {
                                _iterator4.f();
                            }
                        });
                    }
                } catch (err) {
                    _iterator3.e(err);
                } finally {
                    _iterator3.f();
                }
            }

            if (layer) {
                layer.addEventListener('click', function(e) {
                    var _iterator5 = _createForOfIteratorHelper(userDdList),
                        _step5;

                    try {
                        for (_iterator5.s(); !(_step5 = _iterator5.n()).done;) {
                            var userDd = _step5.value;

                            if (userDd.classList.contains('active')) {
                                userDd.classList.remove('active');
                                layer.classList.remove('active');
                            }
                        }
                    } catch (err) {
                        _iterator5.e(err);
                    } finally {
                        _iterator5.f();
                    }
                });
            }
        })();
    </script>
    {{--  <script>
        $(document).ready(function() {

            let post_1 = document.querySelectorAll(".read-more");
            let post_2 = document.querySelectorAll(".swiper-wrapper .swiper-slide");
            let post_3 = document.querySelectorAll(".swiper-navigation .swiper-pagination-bullet");
            let quy_dinh = document.querySelectorAll(".nhan-su li");

            post_1.forEach((item) => item.addEventListener('click', show_post));
            post_2.forEach((item) => item.addEventListener('click', show_post));
            post_3.forEach((item) => item.addEventListener('click', call_route));
            quy_dinh.forEach((item) => item.addEventListener('click', show_post));

            let list_1 = document.querySelectorAll("#listitem li");
            list_1.forEach((item) => item.classList.remove("active"));

            function show_post() {
                var post_id = $(this).val();
                $.ajax({
                    type: "GET",
                    url: "{{ route('post.show') }}",
                    data: {
                        id: post_id
                    },
                    success: function(response) {
                        console.log(response.post);
                        if (response.status == 404) {} else {
                            var time = new Date(response.post.created_at);
                            var view = '#' + response.post.chuyen_muc + '-' + response.post.id;
                            var date = '<i class="icon-calendar3"></i>' + time.getDate() + '-' + time
                                .getMonth() + '-' + time.getFullYear();
                            $(view).html('<i class="icon-eye2"></i>View: ' + response.post.view);
                            $('#time-update').html(date);
                            $('#tac-gia').html('<i class="icon-home1"></i>' + response.post.team);
                            $('#noi-dung').html(response.post.content);
                            $('#tieu-de').text(response.post.title);
                            $('#modal-show').modal('show');
                        }
                    }
                });
                $('.btn-close').find('input').val('');

            }

            function call_route() {
                var post_id = this.id;
                var page = post_id.toLowerCase();
                window.location.href = page + "?view=" + page + "&month=" + month + '&language=' +
                    ngon_ngu;
            }

        });
    </script> --}}
@endsection
