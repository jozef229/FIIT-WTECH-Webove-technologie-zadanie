@extends('layouts.app')

@section('content')


    <main class="container product-detail">
        <h1>
            {{ $product->name }}
        </h1>
        <div class ="product col col-12 row justify-content-around align-self-start">
            <div class="picture_detail col col-12 col-md-7 img_height thumbnail vertical-center">
                <img class="img-fluid" src="{{ Storage::disk('local')->url('public/'.$product->file) }}" alt="produkt">
            </div>
            <div class="col col-12 col-md-5 row row justify-content-end">
                <div class="cena col col-6 col-md-12 align-self-end">
                    <p>Informácie:</p>
                    <ul>
                        @foreach($categories as $category)
                            <li>Druh: {{$category->category}}</li>
                        @endforeach
                        @foreach($colors as $color)
                            <li>Farba: {{$color->color}}</li>
                        @endforeach
                        @foreach($memories as $memory)
                            <li>Veľkosť pamäte: {{$memory->memory}}</li>
                        @endforeach
                    </ul>

                    <p>Cena:</p>
                    <ul>
                        <li>bez dph : € {{ $product->price * 0.8 }}</li>
                        <li>s dph : € {{ $product->price }}</li>
                    </ul>
                </div>
                <div class="col col-6 col-md-12 align-self-center align-self-md-start">

                    @auth
                        @if(Auth::user()->role === false)
                            <form action="{{url('products', [$product->id])}}" method="POST">
                                <input type="hidden" name="_method" value="DELETE">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <input type="submit" class="btn btn-dark" value="Vymazať"/>
                            </form>
                            <a class="btn btn-dark" href="{{ URL::to('products/' . $product->id . '/edit') }}">Editovať</a>
                        @else
                            <form action="{{url('basket', [$product->id])}}">
                                <button class="insert_trash_button btn btn-dark "><i type="submit" class="fa fa-shopping-cart"></i>Vložiť do košíka</button>
                            </form>
                        @endif
                    @endauth
                    @guest
                        <p>Pre vloženie produktu do košíka sa prosím prihláste</p>
                    @endguest

                </div>
            </div>
        </div>
        <div>
            <h1 class="border-bottom">Podrobné informácie</h1>
            <p>
                {{ $product->description }}
            </p>
        </div>
    </main>

@endsection