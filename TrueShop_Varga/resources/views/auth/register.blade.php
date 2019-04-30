@extends('layouts.app')

@section('content')

    <main class="form-other-style">
        <div class="container">
            <div class="col-lg-9 delivery_details">
                <form method="POST" action="{{ route('register') }}">
                    @csrf

                    <h1>Registrácia</h1>

                    <div class="form-group row justify-content-around">
                        <label for="email" class="col-4 col-lg-3 col-form-label">Email:</label>
                        <div class="col-8 col-lg-7">
                            <input id="email" placeholder="e-mail" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
                            @if ($errors->has('email'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="password" class="col-4 col-lg-3 col-form-label">Heslo:</label>
                        <div class="col-8 col-lg-7">
                            <input id="password" type="password" placeholder="Zadanie hesla" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                            @if ($errors->has('password'))
                                <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="password-confirm" class="col-4 col-lg-3 col-form-label">Potvrdenie hesla:</label>
                        <div class="col-8 col-lg-7">
                            <input placeholder="Potvrdenie hesla" id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="telephone" class="col-4 col-lg-3 col-form-label">Telefón:</label>
                        <div class="col-8 col-lg-7">
                            <input id="telephone" type="text" placeholder="0918......" class="form-control{{ $errors->has('telephone') ? ' is-invalid' : '' }}" name="telephone" value="{{ old('telephone') }}" required autofocus>
                            @if ($errors->has('telephone'))
                                <span class="invalid-feedback">
                                        <strong>{{ $errors->first('telephone') }}</strong>
                                    </span>
                            @endif
                        </div>
                    </div>
                    <h1>Fakturačné údaje</h1>
                    <div class="form-group row justify-content-around">
                        <label for="mame_f" class="col-4 col-lg-3 col-form-label">Meno a priezvisko:</label>
                        <div class="col-8 col-lg-7">
                            <input  onkeyup="change();" id="name_f" type="text" placeholder="Jo... Mrk..." class="form-control{{ $errors->has('name_f') ? ' is-invalid' : '' }}" name="name_f" value="{{ old('name_f') }}" required>
                            @if ($errors->has('name_f'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('name_f') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="street_f" class="col-4 col-lg-3 col-form-label">Ulica:</label>
                        <div class="col-8 col-lg-7">
                            <input onkeyup="change();" id="street_f" type="text" placeholder="zadaj ulicu" class="form-control{{ $errors->has('street_f') ? ' is-invalid' : '' }}" name="street_f" value="{{ old('street_f') }}" required>
                            @if ($errors->has('street_f'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('street_f') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="city_f" class="col-4 col-lg-3 col-form-label">Mesto:</label>
                        <div class="col-8 col-lg-7">
                            <input onkeyup="change();" id="city_f" type="text" placeholder="zadaj mesto" class="form-control{{ $errors->has('city_f') ? ' is-invalid' : '' }}" name="city_f" value="{{ old('city_f') }}" required autofocus>
                            @if ($errors->has('city_f'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('city_f') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="zip_f" class="col-4 col-lg-3 col-form-label">PSČ:</label>
                        <div class="col-8 col-lg-7">
                            <input onkeyup="change();" id="zip_f" type="text" placeholder="zadaj psč" class="form-control{{ $errors->has('zip_f') ? ' is-invalid' : '' }}" name="zip_f" value="{{ old('zip_f') }}" required autofocus>
                            @if ($errors->has('zip_f'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('zip_f') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <h1>Dodacie údaje</h1>
                    <div class="form-check delivery_details_fill">
                        <input class="form-check-input" type="checkbox" onclick="control_information()" id="delivery_details_auto_d" value="1">
                        <label class="form-check-label" for="delivery_details_auto_d">
                            Vyplniť dodacie údaje rovnako ako fakturačné
                        </label>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="name_d" class="col-4 col-lg-3 col-form-label">Meno a priezvisko:</label>
                        <div class="col-8 col-lg-7">
                            <input id="name_d" type="text" placeholder="Joz... Mrk..." class="form-control{{ $errors->has('name_d') ? ' is-invalid' : '' }}" name="name_d" value="{{ old('name_d') }}" required>
                            @if ($errors->has('name_d'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('name_d') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="street_d" class="col-4 col-lg-3 col-form-label">Ulica:</label>
                        <div class="col-8 col-lg-7">
                            <input id="street_d" type="text" placeholder="zadaj ulicu" class="form-control{{ $errors->has('street_d') ? ' is-invalid' : '' }}" name="street_d" value="{{ old('street_d') }}" required>
                            @if ($errors->has('street_d'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('street_d') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="city_d" class="col-4 col-lg-3 col-form-label">Mesto:</label>
                        <div class="col-8 col-lg-7">
                            <input id="city_d" type="text" placeholder="zadaj mesto" class="form-control{{ $errors->has('city_d') ? ' is-invalid' : '' }}" name="city_d" value="{{ old('city_d') }}" required autofocus>
                            @if ($errors->has('city_d'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('city_d') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="zip_d" class="col-4 col-lg-3 col-form-label">PSČ:</label>
                        <div class="col-8 col-lg-7">
                            <input id="zip_d" type="text" placeholder="zadaj psč" class="form-control{{ $errors->has('zip_d') ? ' is-invalid' : '' }}" name="zip_d" value="{{ old('zip_d') }}" required autofocus>
                            @if ($errors->has('zip_d'))
                                <span class="invalid-feedback">
                                <strong>{{ $errors->first('zip_d') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-10 next_button_2 next_price justify-content-end row">
                        <button class="next_button_2 btn btn-primary" type="submit">
                            {{ __('Registrovať') }}
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </main>

@endsection