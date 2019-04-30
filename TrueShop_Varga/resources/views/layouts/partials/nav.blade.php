<nav class="category_menu navbar  navbar-expand-lg navbar-dark bg-dark">
    <div class="collapse navbar-collapse " id="menu_buttom">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0 container justify-content-center ">
            <li class="nav-item">
                <a class="nav-link {{ !request()->has('category') && Request::is('/') ? 'active' : '' }}" href="/">TrueShop</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ !request()->has('category') && !Request::is('/') ? 'active' : '' }}" href="/products/">Všetky produkty</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ request()->has('category') && request('category') == 1 ? 'active' : '' }}" href="/products/?category=1">Počítače Apple</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ request()->has('category') && request('category') == 2 ? 'active' : '' }}" href="/products/?category=2">iPhone</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ request()->has('category') && request('category') == 3 ? 'active' : '' }}" href="/products/?category=3">iPad</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">o nás</a>
            </li>
        </ul>
    </div>
</nav>