@extends('smart-tab.layout')
@section('content')
    {{-- <div class="container"> --}}
        <h1 class="index-title"> WELCOME TO CNC QC SMART-TAB</h1>
        {{--    <a href="{{ route('home.2') }}"> home</a> --}}
        <div class="row my-5 ">
            <ul class="menu-item">
                <a href="#" id="limit">
                    <li class="item-list limit">
                        <div class="module-1 ">
                            <img src="{{ asset('smart-ver2/icon/limit 2.png') }}">
                            <h3>LIMIT</h3>
                        </div>
                    </li>
                </a>

                <a href="#" id="worst">
                    <li class="item-list worst">
                        <div class="module-2">
                            <img class="thum-off" src="{{ asset('smart-ver2/icon/worst 2.png') }}" alt="alt text here">
                            <h3>WORST</h3>
                        </div>
                    </li>
                </a>

                <a href="#" id="standard">
                    <li class="item-list tieu-chuan">
                        <div class="module-3">
                            <img class="thum-off" src="{{ asset('smart-ver2/icon/standard.png') }}" alt="alt text here">
                            <h3>STANDARD</h3>
                        </div>
                    </li>
                </a>


                <a href="#" id="report">
                    <li class="item-list report">
                        <div class="module-4">
                            <img class="thum-off" src="{{ asset('smart-ver2/icon/report.png') }}" alt="alt text here">
                            <h3>REPORT</h3>
                        </div>
                    </li>
                </a>
            </ul>
        </div>
    {{-- </div> --}}
@endsection

@section('chartjs')
    <script>
        $(document).ready(function() {
            let list = document.querySelectorAll(".menu-item a");
            var activeItem = localStorage.getItem('activeItem');
            list.forEach((item) => item.addEventListener('click', call_route));
            function call_route() {
                var itemId = this.id;
                var url = "{{ url('') }}/" + itemId;
                localStorage.setItem('activeItem', itemId);
                window.location.href = url;
            }

        });
    </script>
@endsection
