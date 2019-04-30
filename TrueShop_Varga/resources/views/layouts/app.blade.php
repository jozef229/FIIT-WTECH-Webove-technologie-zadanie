<!doctype html>
<html lang="sk">

@include('layouts.partials.head')

    <body>
        @include('layouts.partials.header')
        @include('layouts.partials.nav')
        @yield('content')
        @include('layouts.partials.footer')
    </body>
</html>