<?php $__env->startSection('content'); ?>


    <main class="container product-detail">
        <h1>
            <?php echo e($product->name); ?>

        </h1>
        <div class ="product col col-12 row justify-content-around align-self-start">
            <div class="picture_detail col col-12 col-md-7 img_height thumbnail vertical-center">
                <img class="img-fluid" src="<?php echo e(Storage::disk('local')->url('public/'.$product->file)); ?>" alt="produkt">
            </div>
            <div class="col col-12 col-md-5 row row justify-content-end">
                <div class="cena col col-6 col-md-12 align-self-end">
                    <p>Informácie:</p>
                    <ul>
                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>Druh: <?php echo e($category->category); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php $__currentLoopData = $colors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $color): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>Farba: <?php echo e($color->color); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php $__currentLoopData = $memories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $memory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>Veľkosť pamäte: <?php echo e($memory->memory); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>

                    <p>Cena:</p>
                    <ul>
                        <li>bez dph : € <?php echo e($product->price * 0.8); ?></li>
                        <li>s dph : € <?php echo e($product->price); ?></li>
                    </ul>
                </div>
                <div class="col col-6 col-md-12 align-self-center align-self-md-start">

                    <?php if(auth()->guard()->check()): ?>
                        <?php if(Auth::user()->role === false): ?>
                            <form action="<?php echo e(url('products', [$product->id])); ?>" method="POST">
                                <input type="hidden" name="_method" value="DELETE">
                                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                                <input type="submit" class="btn btn-dark" value="Vymazať"/>
                            </form>
                            <a class="btn btn-dark" href="<?php echo e(URL::to('products/' . $product->id . '/edit')); ?>">Editovať</a>
                        <?php else: ?>
                            <form action="<?php echo e(url('basket', [$product->id])); ?>">
                                <button class="insert_trash_button btn btn-dark "><i type="submit" class="fa fa-shopping-cart"></i>Vložiť do košíka</button>
                            </form>
                        <?php endif; ?>
                    <?php endif; ?>
                    <?php if(auth()->guard()->guest()): ?>
                        <p>Pre vloženie produktu do košíka sa prosím prihláste</p>
                    <?php endif; ?>

                </div>
            </div>
        </div>
        <div>
            <h1 class="border-bottom">Podrobné informácie</h1>
            <p>
                <?php echo e($product->description); ?>

            </p>
        </div>
    </main>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>