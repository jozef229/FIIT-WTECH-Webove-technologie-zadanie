@extends('layouts.app')

@section('content')

    <main class="form-other-style">
    <div class="container">
        <div class="col-lg-9 delivery_details">
            <h1>Vytvorenie nového produktu</h1>
            <form action="/products" enctype="multipart/form-data" method="post">
                {{ csrf_field() }}
                <div class="form-group row justify-content-around">
                    <label for="meno_produktu" class="col-4 col-lg-3 col-form-label">Meno produktu:</label>
                    <div class="col-8 col-lg-7">
                        <input class="form-control" type="text" placeholder="Meno produktu" id="productName" name="name">
                    </div>
                </div>
                <div class="form-group row justify-content-around">
                    <label for="price_product" class="col-4 col-lg-3 col-form-label">Cena produktu:</label>
                    <div class="col-8 col-lg-7">
                        <input class="form-control" type="number" placeholder="0" id="productPrice" name="price" step="any">
                    </div>
                </div>
                <div class="form-group row justify-content-around">
                    <label class="col-4 col-lg-3 col-form-label" for="productCategory">Kategória</label>
                    <select class="col-8 col-lg-7 form-control" id="productCategory" name="category">
                        @foreach ($categories as $category)
                            <option value="{{$category->id}}">{{$category->category}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group row justify-content-around">
                    <label class="col-4 col-lg-3 col-form-label" for="productMemory">Veľkosť pamäte</label>
                    <select class="col-8 col-lg-7 form-control" id="productMemory" name="memory">
                        @foreach ($memories as $memory)
                            <option value="{{$memory->id}}">{{$memory->memory}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group row justify-content-around">
                    <label class="col-4 col-lg-3 col-form-label" for="productColor">Farba</label>
                    <select class="col-8 col-lg-7 form-control" id="productColor" name="color">
                        @foreach ($colors as $color)
                            <option value="{{$color->id}}">{{$color->color}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group row justify-content-around">
                    <label for="image"></label>
                    <input type="file" name="image" id="image">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Podrobné informácie:</label>
                    <textarea class="form-control" id="productDescription" name="description" rows="3"></textarea>
                </div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="next_button_2 next_price justify-content-around row">
                    <div class="next_button_2"><button type="submit" class="btn btn-secondary">Uložiť</button></div>
                </div>
            </form>
        </div>

    </div>
</main>

@endsection
