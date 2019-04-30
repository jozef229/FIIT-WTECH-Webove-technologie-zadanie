<?php $__env->startSection('content'); ?>

    <main class="form-other-style">
        <div class="container">
            <div class="col-lg-9 delivery_details">
                <h1>Úprava produktu</h1>
                <form action="<?php echo e(url('products', [$product->id])); ?>" method="POST">
                    <input type="hidden" name="_method" value="PUT">
                    <?php echo e(csrf_field()); ?>

                    <div class="form-group row justify-content-around">
                        <label for="meno_produktu" class="col-4 col-lg-3 col-form-label">Meno produktu:</label>
                        <div class="col-8 col-lg-7">
                            <input class="form-control" type="text" value="<?php echo e($product->name); ?>" placeholder="Meno produktu" id="productName" name="name">
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="price_product" class="col-4 col-lg-3 col-form-label">Cena produktu:</label>
                        <div class="col-8 col-lg-7">
                            <input class="form-control" value="<?php echo e($product->price); ?>" type="number" placeholder="0" id="productPrice" name="price" step="any">
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label class="col-4 col-lg-3 col-form-label" for="productCategory">Kategória</label>
                        <select class="col-8 col-lg-7 form-control" id="productCategory" name="category">
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($category->id != $product->category_id): ?>
                                    <option value="<?php echo e($category->id); ?>"><?php echo e($category->category); ?></option>
                                <?php else: ?>
                                    <option value="<?php echo e($category->id); ?>" selected><?php echo e($category->category); ?></option>
                                <?php endif; ?>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label class="col-4 col-lg-3 col-form-label" for="productMemory">Veľkosť pamäte</label>
                        <select class="col-8 col-lg-7 form-control" id="productMemory" name="memory">
                            <?php $__currentLoopData = $memories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $memory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($memory->id != $product->memory_id): ?>
                                    <option value="<?php echo e($memory->id); ?>"><?php echo e($memory->memory); ?></option>
                                <?php else: ?>
                                    <option value="<?php echo e($memory->id); ?>" selected><?php echo e($memory->memory); ?></option>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label class="col-4 col-lg-3 col-form-label" for="productColor">Farba</label>
                        <select class="col-8 col-lg-7 form-control" id="productColor" name="color">
                            <?php $__currentLoopData = $colors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $color): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($color->id != $product->color_id): ?>
                                    <option value="<?php echo e($color->id); ?>"><?php echo e($color->color); ?></option>
                                <?php else: ?>
                                    <option value="<?php echo e($color->id); ?>" selected><?php echo e($color->color); ?></option>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                    <div class="form-group row justify-content-around">
                        <input class="btn" type="file" class="form-control-file" id="exampleFormControlFile1">
                        <button class="btn btn-secondary">Upload fotky</button>
                    </div>
                    <div class="form-group">
                        <label for="productDescription">Podrobné informácie:</label>
                        <textarea class="form-control" id="productDescription" name="description" rows="3"><?php echo e($product->description); ?></textarea>
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

                    <div class="next_button_2 next_price justify-content-center row">
                        <div class="next_button_2"><button type="submit" class="btn btn-secondary">Uložiť</button></div>
                    </div>
                </form>
            </div>
        </div>
    </main>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>