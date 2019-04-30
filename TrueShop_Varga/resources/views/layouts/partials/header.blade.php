<header class = "navbar-dark bg-secondary" >
    <div class = container >
        <div class = "row navbar navbar-expand-lg">
            <div class="col col-4">
                <a href="/">
                    <img src="{{ Storage::disk('local')->url('public/logo.png') }}" alt="logo TrueShop" class="img-fluid">
                </a>
            </div>
            <div>
                <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#user_menu_buttom" aria-controls="user_menu_buttom" aria-expanded="false" aria-label="Toggle navigation">
                    <span><i class="fa fa-user-circle icon_menu"></i></span>
                </button>
                <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#search_menu_buttom" aria-controls="search_menu_buttom" aria-expanded="false" aria-label="Toggle navigation">
                    <span ><i class="fa fa-search icon_menu"></i></span>
                </button>
                <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#menu_buttom" aria-controls="menu_buttom" aria-expanded="false" aria-label="Toggle navigation">
                    <span ><i class="fa fa-bars icon_menu"></i></span>
                </button>
            </div>
            <div class = "col col-lg-8 col-12">
            <div  class= "collapse navbar-collapse justify-content-end width_100 row" id="user_menu_buttom">
                @guest
                    @if(!Request::is('login'))
                        <form class= " justify-content-end width_100 row" method="POST" action="{{ route('login') }}">
                            @csrf
                            <input id="email" name="email" type="email" placeholder="e-mail" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }} col col-12 col-lg-3" value="{{ old('email') }}" required autofocus>
                            <input placeholder="heslo" id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }} col col-12 col-lg-3" name="password" required>
                            <button type="submit" class="btn btn-dark col col-4 col-lg-2">{{ __('Prihlásiť') }}</button>
                            <a id="a_header" class="btn btn-dark col col-4 col-lg-2" href="{{ route('register') }}">Registrovať</a>
                        </form>
                    @endif
                @else
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class= "justify-content-end width_100 row" >
                        @csrf
                        <span id="user_email_header" >{{ Auth::user()->email }}</span>
                        <button type="submit" class="btn btn-dark col col-4 col-lg-2">Odhlásiť</button>
                    </form>
                @endguest

            </div>

                <form role="search" class="collapse navbar-collapse justify-content-end width_100 row" id="search_menu_buttom">
                    <input type = "text" placeholder="Sem napíšte hľadané slovo" class="form-control col col-12 col-lg-6" name="search" id="productSeatch">
                    <button  type="submit" formaction="/products/?search={{'search'}}" class="btn btn-dark col col-4 col-lg-2"><i class="fa fa-search"></i> Hľadať</button>
                    @auth
                        @if(Auth::user()->role === true)
                        <a class=" btn btn-dark col col-4 col-lg-2" href="/basket/"><i class="fa fa-shopping-cart"></i> Košík</a>
                        @endif
                    @endauth
                </form >
            </div>
        </div>
    </div>
</header>