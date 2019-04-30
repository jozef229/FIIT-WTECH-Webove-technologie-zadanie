@extends('layouts.app')

@section('content')
    @if (Session::has('message'))
        <div class="alert alert-info">{{ Session::get('message') }}</div>
    @endif

    <main class="all-products" id="all-products-main">
    <div class="container">
        <div class="row content">
            <div class = "filter_menu navbar navbar-expand-lg bg-dark col col-12 col-lg-2 align-items-start">

                <div>
                    <h1 class="filter small">Všetky producty</h1>
                </div>
                <div>
                    <button class="navbar-toggler border border-secondary" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo04" aria-controls="navbarTogglerDemo04" aria-expanded="false" aria-label="Toggle navigation">
                        <span><i class="fa fa-filter icon_filter"></i></span>
                    </button>
                </div>

                <div class= "collapse row navbar-collapse justify-content-start" id="navbarTogglerDemo04">
                    @if($request != '' && $request->color == '')
                        <div class="">
                            <p class="search_text">Vyhľadávaný výraz: {{$request->search}}</p>
                        </div>
                    @else
                    <form method="POST" role="filter" action="/products/filter/">
                        {{ csrf_field() }}
                        <p class="kategorie">Farba</p>
                        @foreach ($colors as $color)
                            <div class="form-check col col-12">
                                <input class="form-check-input" type="checkbox" value="{{$color->id}}" name="color[]">
                                <label class="form-check-label">
                                    {{$color->color}}
                                </label>
                            </div>
                        @endforeach
                        <p class="kategorie">Vnútorná pamäť</p>
                        @foreach ($memories as $memory)
                            <div class="form-check col col-12">
                                <input class="form-check-input" type="checkbox" value="{{$memory->id}}" name="memory[]">
                                <label class="form-check-label">
                                    {{$memory->memory}}
                                </label>
                            </div>
                        @endforeach
                        <p class="kategorie">Maximálna cena</p>
                        <div class="col col-4 col-lg-9">
                            <input name="price" type="text" placeholder="...€" class="form-control">
                        </div>
                        <button type="submit" class="search_buttom btn btn-secondary"> Vyhľadať</button>

                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                    </form>
                    @endif
                </div>
            </div>
            <div class = "all_products col-lg-10 center_margin row justify-content-start align-self-start">
                @foreach($products as $product)
                    <div class="col-12 col-lg-4 col">
                        <a class="product  row" href="/products/{{$product->id}}">
                            <div class="img_height thumbnail col col-6 col-md-5 col-lg-12 vertical-center">
                                <img class="img-fluid" src= "{{ Storage::disk('local')->url('public/'.$product->file) }}" alt="product">
                            </div>
                            <div class="info_product col col-6 col-md-7 col-lg-12">
                                <p class="title_product">
                                     {{$product->name}}
                                </p>
                                <p class="price_product">
                                    €{{$product->price}}
                                </p>
                            </div>
                        </a>
                    </div>
                @endforeach
                <nav class="col col-12 row  justify-content-center">
                    {{$products->links()}}
                </nav>
            </div>
        </div>
    </div>
</main>

@endsection