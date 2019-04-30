<?php $__env->startSection('content'); ?>
    <main class="form-other-style">
    <div class="container">
        <div class="col-12 col-lg-9 center_margin">
            <h1>Akcie</h1>
            <div>
                <form action="/" enctype="multipart/form-data" method="post">
                    <?php echo e(csrf_field()); ?>

                    <div class="form-group row justify-content-around">
                        <label for="image1"></label>
                        <input type="file" name="image1" id="image1">
                        <button type="submit" name="action1" value="action1" id="action1" class="btn btn-secondary">Upload fotky</button>
                    </div>
                </form>
                <form action="/" enctype="multipart/form-data" method="post">
                    <?php echo e(csrf_field()); ?>

                    <div class="form-group row justify-content-around">
                        <label for="image2"></label>
                        <input type="file" name="image2" id="image2">
                        <button type="submit" name="action2" value="action2" id="action2" class="btn btn-secondary">Upload fotky</button>
                    </div>
                </form>

                <form action="/" enctype="multipart/form-data" method="post">
                    <?php echo e(csrf_field()); ?>

                    <div class="form-group row justify-content-around">
                        <label for="image3"></label>
                        <input type="file" name="image3" id="image3">
                        <button type="submit" name="action3" value="action3"  id="action3" class="btn btn-secondary">Upload fotky</button>
                    </div>
                </form>
                <form action="/" enctype="multipart/form-data" method="post">
                    <?php echo e(csrf_field()); ?>

                    <div class="form-group row justify-content-around">
                        <label for="image4"></label>
                        <input type="file" name="image4" id="image4">
                        <button type="submit" name="action4" value="action4" id="action4" class="btn btn-secondary">Upload fotky</button>
                    </div>
                </form>



            </div>
            <h1>Pridať produkt</h1>
            <div class="next_price">
                <a class="btn btn-secondary" href="\products\create">Pridať produkt</a>
            </div>
        </div>
    </div>
</main>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>