<?php $__env->startSection('content'); ?>

<main class="container form-other-style">
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
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-basket-1" role="tabpanel" aria-labelledby="v-pills-basket-1-tab">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <h1>Košík</h1>
                        <div class="produkt col col-12 row border-bottom border-top">
                            <div class="col-12">
                                <a href="#"><i class="cancel fa fa-times fa-lg"></i></a>
                            </div>
                            <div class="img_height thumbnail col col-5 col-lg-4 vertical-center">
                                <img class="img-fluid" src="picture/Macbook_pro.png" alt="produkt">
                            </div>
                            <div class="info_produkt row col col-7 col-lg-8">
                                <div class="col-12 col-lg-6">
                                    <p class="nazov_produktu">
                                        MacBook Pro 13" Retina SK 2017 s Touch Barem Vesmírne sivým
                                    </p>
                                </div>

                                <div class="kosik_price row justify-content-center col-12 col-lg-6">
                                    <p class="price_product">
                                        €2 650,99
                                    </p>
                                    <div class="btn-group" role="group">
                                        <button class="button_price btn btn-secondary">-</button>
                                        <input class="input_price form-control" type="text" placeholder="1">
                                        <button class="button_price btn btn-dark">+</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="produkt col col-12 row border-bottom border-top">
                            <div class="col-12">
                                <a href="#"><i class="cancel fa fa-times fa-lg"></i></a>
                            </div>
                            <div class="img_height thumbnail col col-5 col-lg-4 vertical-center">
                                <img class="img-fluid" src="picture/Macbook_pro.png" alt="produkt">
                            </div>
                            <div class="info_produkt row col col-7 col-lg-8">
                                <div class="col-12 col-lg-6">
                                    <p class="nazov_produktu">
                                        MacBook Pro 13" Retina SK 2017 s Touch Barem Vesmírne sivým
                                    </p>
                                </div>

                                <div class="kosik_price row justify-content-center col-12 col-lg-6">
                                    <p class="price_product">
                                        €2 650,99
                                    </p>
                                    <div class="btn-group" role="group">
                                        <button class="button_price btn btn-secondary">-</button>
                                        <input class="input_price form-control" type="text" placeholder="1">
                                        <button class="button_price btn btn-dark">+</button>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="next_button_1 price">
                            <p class="next_button_2">Cena bez dph: 2030€</p>
                            <p class="next_button_2">Cena s dph: 2230€</p>
                            <button class=" next_button_2 btn btn-secondary" id="continue_pay_method">Pokračovať</button>
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade col-lg-9 shipping_payment" id="v-pills-basket-2" role="tabpanel" aria-labelledby="v-pills-basket-2-tab">
                    <div class="row">
                        <div class="type_of_transport col col-12 col-md-6 ">
                            <h1>Spôsob dopravy</h1>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="doprava_radios" id="doprava-1" value="1">
                                <label class="form-check-label" for="doprava-1">
                                    Osobný odber
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="doprava_radios" id="doprava-2" value="2">
                                <label class="form-check-label" for="doprava-2">
                                    Slovenská pošta
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="doprava_radios" id="doprava-3" value="3">
                                <label class="form-check-label" for="doprava-3">
                                    Kurier DHL
                                </label>
                            </div>
                        </div>
                        <div class="payment method col col-12 col-md-6">
                            <h1>Spôsob platby</h1>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="platba_radios" id="platba-1" value="1">
                                <label class="form-check-label" for="platba-1">
                                    Platba kartou - CardPay
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="platba_radios" id="platba-2" value="2">
                                <label class="form-check-label" for="platba-2">
                                    Online platba - TatraPay
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="platba_radios" id="platba-3" value="3">
                                <label class="form-check-label" for="platba-3">
                                    Bankový prevod
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="platba_radios" id="platba-4" value="4">
                                <label class="form-check-label" for="platba-4">
                                    V hotovosti
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="next_button_2 next_price justify-content-around row">
                        <div class="next_button_2"><button class="btn btn-secondary" id="back_basket">Späť</button></div>
                        <div class="next_button_2"><button class="btn btn-secondary" id="continue_delivery_information">Pokračovať</button></div>
                    </div>
                </div>


                <div class="tab-pane fade col-lg-9 delivery_details" id="v-pills-basket-3" role="tabpanel" aria-labelledby="v-pills-basket-3-tab">
                    <h1>Dodacie údaje</h1>
                    <form>
                        <div class="form-check delivery_details_fill">
                            <input class="form-check-input" type="checkbox" id="delivery_details_auto" value="1">
                            <label class="form-check-label" for="delivery_details_auto">
                                Vyplniť dodacie údaje rovnako ako fakturačné
                            </label>
                        </div>
                        <div class="form-group row justify-content-around">
                            <label for="meno_priezvisko" class="col-4 col-lg-3 col-form-label">Meno a priezvisko:</label>
                            <div class="col-8 col-lg-7">
                                <input class="form-control" type="text" placeholder="Meno a priezvisko" id="meno_priezvisko">
                            </div>
                        </div>
                        <div class="form-group row justify-content-around">
                            <label for="ulica" class="col-4 col-lg-3 col-form-label">Ulica:</label>
                            <div class="col-8 col-lg-7">
                                <input class="form-control" type="text" placeholder="Ulica" id="ulica">
                            </div>
                        </div>
                        <div class="form-group row justify-content-around">
                            <label for="mesto" class="col-4 col-lg-3 col-form-label">Mesto:</label>
                            <div class="col-8 col-lg-7">
                                <input class="form-control" type="text" placeholder="Mesto" id="mesto">
                            </div>
                        </div>
                        <div class="form-group row justify-content-around">
                            <label for="psc" class="col-4 col-lg-3 col-form-label">PSČ:</label>
                            <div class="col-8 col-lg-7">
                                <input class="form-control" type="text" placeholder="PSČ" id="psc">
                            </div>
                        </div>
                    </form>
                    <div class="next_button_2 next_price justify-content-around row">

                        <div class="next_button_2"><button class="btn btn-secondary" id="back_pay_method">Späť</button></div>
                        <div class="next_button_2"><button class="btn btn-secondary">Kúpiť</button></div>
                    </div>
                </div>

            </div>
        </article>
    </div>
    <div>
        <a href="#"><i class="fa fa-comment messenger fa-3x"></i></a>
    </div>
</main>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>