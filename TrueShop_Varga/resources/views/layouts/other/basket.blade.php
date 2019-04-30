@extends('layouts.app')

@section('content')

<main class="container form-other-style">
    @if(count($products)<1)
        <div class="justify-content-center row">
            <h1>Košík je prázdny</h1>
        </div>
    @else
        <nav class="">
            <div class="nav navbar nav-pills row justify-content-center" id="v-pills-tab" role="tablist">
                <a class="navigation_shopping_basket horizontal-center-text col-2 col-md-1 active" id="v-pills-basket-1-tab" data-toggle="pill" href="#v-pills-basket-1" role="tab" aria-controls="v-pills-basket-1" aria-selected="true"><i class="icon_navigation_shopping_basket fa fa-shopping-cart fa-lg"></i></a>
                <i class="horizontal-center-text col-1 fa fa-arrow-right"></i>
                <a class="navigation_shopping_basket horizontal-center-text col-2 col-md-1" id="v-pills-basket-2-tab" data-toggle="pill" href="#v-pills-basket-2" role="tab" aria-controls="v-pills-basket-2" aria-selected="false"><i class="icon_navigation_shopping_basket fa fa-truck fa-lg"></i></a>
                <i class="horizontal-center-text col-1 fa fa-arrow-right"></i>
                <a class="navigation_shopping_basket horizontal-center-text col-2 col-md-1" id="v-pills-basket-3-tab" data-toggle="pill" href="#v-pills-basket-3" role="tab" aria-controls="v-pills-basket-3" aria-selected="false"><i class="icon_navigation_shopping_basket fa fa-address-card fa-lg"></i></a>
            </div>
        </nav>
        <div class="content">
            <article>
                <form action="/order" enctype="multipart/form-data" method="POST">
                    {{ csrf_field() }}
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-basket-1" role="tabpanel" aria-labelledby="v-pills-basket-1-tab">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <h1>Košík</h1>
                                @foreach($products as $product)
                                    <div class="produkt col col-12 row border-bottom border-top">
                                        <div class="col-12">
                                            <a href="{{url('basket/refresh', [$product->id])}}"><i class="cancel fa fa-times fa-lg"></i></a>
                                        </div>
                                        <div class="img_height thumbnail col col-5 col-lg-4 vertical-center">
                                            <img class="img-fluid" src="{{ Storage::disk('local')->url('public/'.$product->file) }}" alt="produkt">
                                        </div>
                                        <div class="info_produkt row col col-7 col-lg-8">
                                            <div class="col-12 col-lg-6">
                                                <p class="nazov_produktu">
                                                    {{$product->name}}
                                                </p>
                                            </div>

                                            <div class="kosik_price row justify-content-center col-12 col-lg-6">
                                                <p class="price_product">
                                                    €{{$product->price}}
                                                </p>
                                                <input class="input_price form-control" type="number" name="number[]"   value="1" min="1">
                                                {{----}}
                                                {{--<div class="btn-group" role="group">--}}
                                                    {{--<button class="button_price btn btn-secondary">-</button>--}}
                                                    {{--<input class="input_price form-control" type="text" placeholder="1">--}}
                                                    {{--<button class="button_price btn btn-dark">+</button>--}}
                                                {{--</div>--}}
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                <div class="next_button_1 price">
                                    <p class="next_button_2">Cena bez dph: {{$price * 0.8}}€</p>
                                    <p class="next_button_2">Cena s dph: {{$price}}€</p>
                                    <a class=" next_button_2 btn btn-secondary" id="continue_pay_method">Pokračovať</a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade col-lg-9 shipping_payment" id="v-pills-basket-2" role="tabpanel" aria-labelledby="v-pills-basket-2-tab">
                            <div class="row">
                                <div class="type_of_transport col col-12 col-md-6 ">
                                    <h1>Spôsob dopravy</h1>
                                    @foreach ($deliveries as $delivery)
                                        <div class="form-check">
                                            <input class="form-check-input" checked type="radio" value="{{$delivery->id}}" name="delivery">
                                            <label class="form-check-label">
                                                {{$delivery->type}}
                                            </label>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="payment method col col-12 col-md-6">
                                    <h1>Spôsob platby</h1>
                                    @foreach ($payments as $payment)
                                        <div class="form-check">
                                            <input class="form-check-input" checked type="radio" value="{{$payment->id}}" name="payment">
                                            <label class="form-check-label">
                                                {{$payment->type}}
                                            </label>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="next_button_2 next_price justify-content-around row">
                                <div class="next_button_2"><a class="btn btn-secondary" id="back_basket">Späť</a></div>
                                <div class="next_button_2"><a class="btn btn-secondary" id="continue_delivery_information">Pokračovať</a></div>
                            </div>
                        </div>
                        <div class="tab-pane fade col-lg-9 delivery_details" id="v-pills-basket-3" role="tabpanel" aria-labelledby="v-pills-basket-3-tab">
                            <h1>Dodacie údaje</h1>
                            <div class="form-group row justify-content-around">
                                <label for="name" class="col-4 col-lg-3 col-form-label">Meno a priezvisko:</label>
                                <div class="col-8 col-lg-7">
                                    <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{Auth::user()->name_d}}" required>
                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row justify-content-around">
                                <label for="street" class="col-4 col-lg-3 col-form-label">Ulica:</label>
                                <div class="col-8 col-lg-7">
                                    <input id="street" type="text" class="form-control{{ $errors->has('street') ? ' is-invalid' : '' }}" name="street" value="{{Auth::user()->street_d}}" required>
                                    @if ($errors->has('street'))
                                        <span class="invalid-feedback">
                                    <strong>{{ $errors->first('street') }}</strong>
                                </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row justify-content-around">
                                <label for="city" class="col-4 col-lg-3 col-form-label">Mesto:</label>
                                <div class="col-8 col-lg-7">
                                    <input id="city" type="text" class="form-control{{ $errors->has('city') ? ' is-invalid' : '' }}" name="city" value="{{Auth::user()->city_d}}" required autofocus>
                                    @if ($errors->has('city'))
                                        <span class="invalid-feedback">
                                    <strong>{{ $errors->first('city') }}</strong>
                                </span>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row justify-content-around">
                                <label for="zip" class="col-4 col-lg-3 col-form-label">PSČ:</label>
                                <div class="col-8 col-lg-7">
                                    <input id="zip" type="text" class="form-control{{ $errors->has('zip') ? ' is-invalid' : '' }}" name="zip" value="{{Auth::user()->zip_d}}" required autofocus>
                                    @if ($errors->has('zip'))
                                        <span class="invalid-feedback">
                                    <strong>{{ $errors->first('zip') }}</strong>
                                </span>
                                    @endif
                                </div>
                            </div>



                            <div class="next_button_2 next_price justify-content-around row">
                                <div class="next_button_2"><a class="btn btn-secondary" id="back_pay_method">Späť</a></div>
                                <div class="next_button_2"><button type="submit" class="btn btn-secondary">Kúpiť</button></div>
                            </div>

                        </div>
                    </div>
                </form>
            </article>
        </div>
    @endif
</main>



@endsection