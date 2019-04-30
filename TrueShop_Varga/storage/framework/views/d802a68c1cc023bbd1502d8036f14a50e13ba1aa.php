<?php $__env->startSection('content'); ?>

<main class="index">
    <div class="container">
        <section>
            <h1>Akcie</h1>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active next_slide"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner img_height action" role="listbox">
                    <div class="carousel-item active action img_height thumbnail">
                        <img class="d-block img-fluid" src="picture/Best-sale0.jpg" alt="First slide" >
                    </div>
                    <div class="carousel-item action img_height thumbnail">
                        <img class="d-block img-fluid" src="picture/Best-sale1.png" alt="Second slide">
                    </div>
                    <div class="carousel-item action img_height thumbnail">
                        <img class="d-block img-fluid" src="picture/Best-sale2.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <i class="next_slide fa fa-chevron-circle-left fa-3x"></i>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <i class="next_slide fa fa-chevron-circle-right fa-3x"></i>
                </a>
            </div>
        </section>
        <section class="container justify-content-center col col-11">
            <h1>Novinky</h1>
            <div class="row justify-content-center">

                <div class="col col-md-3 col-12">
                    <a href="product_detail.html">
                        <div class="img_height thumbnail vertical-center">
                            <img src="picture/Macbook_pro.png" alt="logo TrueShop" class="img-fluid">
                        </div>
                        <p>Macbook Pro 2017</p>
                    </a>
                </div>

                <div class="col col-md-3 col-12">
                    <a href="product_detail.html">
                        <div class="img_height thumbnail vertical-center">
                            <img src="picture/ipad_pro.png" alt="logo TrueShop" class="img-fluid">
                        </div>
                        <p>Ipad Pro 2017</p>
                    </a>
                </div>
                <div class="col col-md-3 col-12">
                    <a href="product_detail.html">
                        <div class="img_height thumbnail vertical-center">
                            <img src="picture/Apple-iPhone-X.png" alt="logo TrueShop" class="img-fluid">
                        </div>
                        <p>iPhone X 64GB</p>
                    </a>
                </div >
                <div class="col col-md-3 col-12">
                    <a href="product_detail.html">
                        <div class="img_height thumbnail vertical-center">
                            <img src="picture/Macbook_pro.png" alt="logo TrueShop" class="img-fluid">
                        </div>
                        <p>Macbook Pro 2016</p>
                    </a>
                </div>
            </div>
        </section>
    </div>

    <div>
        <a href="#"><i class="fa fa-comment messenger fa-3x"></i></a>
    </div>
</main>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>