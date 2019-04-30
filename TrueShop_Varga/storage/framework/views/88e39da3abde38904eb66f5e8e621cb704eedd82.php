<?php $__env->startSection('content'); ?>
    <?php if(Session::has('message')): ?>
        <div class="alert alert-info"><?php echo e(Session::get('message')); ?></div>
    <?php endif; ?>

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
                    <?php if($request != '' && $request->color == ''): ?>
                        <div class="">
                            <p class="search_text">Vyhľadávaný výraz: <?php echo e($request->search); ?></p>
                        </div>
                    <?php else: ?>
                    <form method="POST" role="filter" action="/products/filter/">
                        <?php echo e(csrf_field()); ?>

                        <p class="kategorie">Farba</p>
                        <?php $__currentLoopData = $colors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $color): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="form-check col col-12">
                                <input class="form-check-input" type="checkbox" value="<?php echo e($color->id); ?>" name="color[]">
                                <label class="form-check-label">
                                    <?php echo e($color->color); ?>

                                </label>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <p class="kategorie">Vnútorná pamäť</p>
                        <?php $__currentLoopData = $memories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $memory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="form-check col col-12">
                                <input class="form-check-input" type="checkbox" value="<?php echo e($memory->id); ?>" name="memory[]">
                                <label class="form-check-label">
                                    <?php echo e($memory->memory); ?>

                                </label>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <p class="kategorie">Maximálna cena</p>
                        <div class="col col-4 col-lg-9">
                            <input name="price" type="text" placeholder="...€" class="form-control">
                        </div>
                        <button type="submit" class="search_buttom btn btn-secondary"> Vyhľadať</button>

                        <?php if($errors->any()): ?>
                            <div class="alert alert-danger">
                                <ul>
                                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        <?php endif; ?>

                    </form>
                    <?php endif; ?>
                </div>
            </div>
            <div class = "all_products col-lg-10 center_margin row justify-content-start align-self-start">
                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-12 col-lg-4 col">
                        <a class="product  row" href="/products/<?php echo e($product->id); ?>">
                            <div class="img_height thumbnail col col-6 col-md-5 col-lg-12 vertical-center">
                                <img class="img-fluid" src= "<?php echo e(Storage::disk('local')->url('public/'.$product->file)); ?>" alt="product">
                            </div>
                            <div class="info_product col col-6 col-md-7 col-lg-12">
                                <p class="title_product">
                                     <?php echo e($product->name); ?>

                                </p>
                                <p class="price_product">
                                    €<?php echo e($product->price); ?>

                                </p>
                            </div>
                        </a>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <nav class="col col-12 row  justify-content-center">
                    <?php echo e($products->links()); ?>

                </nav>
            </div>
        </div>
    </div>
</main>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>