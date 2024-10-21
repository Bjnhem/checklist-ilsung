    <div class="row header">
        <div class="col-2 logo-home">
            <a href="{{ route('home') }}" class="standard">
                <div class="logo" id="logo">
                    <img src="{{ asset('smart-ver2/icon/home-2.png') }}"> 
                </div>
                 <h6>QC-Smart</h6>
            </a>
        </div>
        <div class="col-8">
            <ul id="myTab" class="nav nav-tabs boot-tabs">
                <li class="nav-item"> <button class="nav-link" id="limit"> LIMIT</button></li>
                <li class="nav-item"> <button class="nav-link" id="worst">WORST</button></li>
                <li class="nav-item"> <button class="nav-link" id="standard">STANDARD</button> </li>
                <li class="nav-item"> <button class="nav-link" id="report">REPORT</button> </li>
            </ul>
        </div>
        <div class="col-2">
            <div class="container main-nav">
                <div class="main-nav-end">
                    <div class="nav-user-wrapper">
                        <button href="##" class="nav-user-btn dropdown-btn" title="My profile" type="button">
                            <span class="sr-only">My profile</span>
                            <span class="nav-user-img">
                                <picture>
                                    <source srcset="{{ asset('admin/img/avatar/avatar-illustrated-02.webp') }}"
                                        type="image/webp">
                                    <img src="{{ asset('admin/img/avatar/avatar-illustrated-02.png') }}"
                                        alt="User name">
                                </picture>
                            </span>
                        </button>
                        <ul class="users-item-dropdown nav-user-dropdown dropdown">
                            <li><a href="##">
                                    <i data-feather="user" aria-hidden="true"></i>
                                    <span>Profile</span>
                                </a></li>
                            <li><a href="{{ route('login') }}">
                                    <i data-feather="log-in" aria-hidden="true"></i>
                                    <span>Login</span>
                                </a></li>
                            <li>
                                <form action="{{ route('logout') }}" method="POST">
                                    @csrf
                                    <button type="submit"> <i data-feather="log-out"
                                            aria-hidden="true"></i>
                                        <span>Log out</span>
                                    </button>

                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>
    let list = document.querySelectorAll("#myTab .nav-link");
    var logo = document.getElementById('logo');
    var activeItem = localStorage.getItem('activeItem');

    logo.addEventListener('click', function() {
        list.forEach((item) => {
            item.classList.remove("active");
        })
        localStorage.setItem('activeItem', this.id);
    });


    if (activeItem) {
        var selectedItem = document.getElementById(activeItem);
        if (selectedItem) {
            selectedItem.classList.add('active');
        }
    }

    function activeLink() {
        var itemId = this.id;
        var url = "{{ url('') }}/" + itemId;
        list.forEach((item) => {
            item.classList.remove("active");
        });

        this.classList.add("active");
        localStorage.setItem('activeItem', itemId);
        window.location.href = url;
    }
    list.forEach((item) => item.addEventListener('click', activeLink));
</script>
