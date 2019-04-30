<?php $__env->startSection('content'); ?>

    <main class="form-other-style">
    <div class="container">
        <div class="col-lg-9 delivery_details">
            <h1>Vytvorenie nového produktu</h1>
            <form action="/products" enctype="multipart/form-data" method="post">
                <?php echo e(csrf_field()); ?>

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
                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($category->id); ?>"><?php echo e($category->category); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>
                </div>
                <div class="form-group row justify-content-around">
                    <label class="col-4 col-lg-3 col-form-label" for="productMemory">Veľkosť pamäte</label>
                    <select class="col-8 col-lg-7 form-control" id="productMemory" name="memory">
                        <?php $__currentLoopData = $memories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $memory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($memory->id); ?>"><?php echo e($memory->memory); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>
                </div>
                <div class="form-group row justify-content-around">
                    <label class="col-4 col-lg-3 col-form-label" for="productColor">Farba</label>
                    <select class="col-8 col-lg-7 form-control" id="productColor" name="color">
                        <?php $__currentLoopData = $colors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $color): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($color->id); ?>"><?php echo e($color->color); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
                <?php if($errors->any()): ?>
                    <div class="alert alert-danger">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <div class="next_button_2 next_price justify-content-around row">
                    <div class="next_button_2"><button type="submit" class="btn btn-secondary">Uložiť</button></div>
                </div>
            </form>
        </div>

    </div>
</main>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>