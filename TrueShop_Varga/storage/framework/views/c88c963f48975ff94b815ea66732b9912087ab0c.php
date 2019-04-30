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
                    <?php $__currentLoopData = $actions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $action): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="carousel-item <?php echo e($action->id == 1 ? 'active' : ''); ?> action img_height thumbnail">
                        <img class="d-block img-fluid" src="<?php echo e(Storage::disk('local')->url('public/'.$action->file)); ?>"  >
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                <?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $new): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col col-md-3 col-12">
                        <a href="/products/<?php echo e($new->id); ?>">
                            <div class="img_height thumbnail vertical-center">
                                <img src="<?php echo e(Storage::disk('local')->url('public/'.$new->file)); ?>" class="img-fluid">
                            </div>
                            <p><?php echo e($new->name); ?></p>
                        </a>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </section>
    </div>
</main>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>