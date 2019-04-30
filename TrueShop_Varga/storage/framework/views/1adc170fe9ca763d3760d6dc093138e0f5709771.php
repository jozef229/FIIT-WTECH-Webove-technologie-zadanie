<?php $__env->startSection('content'); ?>

    <main class="form-other-style">
        <div class="container">
            <div class="col-lg-9 delivery_details">
                <form method="POST" action="<?php echo e(route('register')); ?>">
                    <?php echo csrf_field(); ?>

                    <h1>Registrácia</h1>

                    <div class="form-group row justify-content-around">
                        <label for="email" class="col-4 col-lg-3 col-form-label">Email:</label>
                        <div class="col-8 col-lg-7">
                            <input id="email" placeholder="e-mail" type="email" class="form-control<?php echo e($errors->has('email') ? ' is-invalid' : ''); ?>" name="email" value="<?php echo e(old('email')); ?>" required>
                            <?php if($errors->has('email')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('email')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="password" class="col-4 col-lg-3 col-form-label">Heslo:</label>
                        <div class="col-8 col-lg-7">
                            <input id="password" type="password" placeholder="Zadanie hesla" class="form-control<?php echo e($errors->has('password') ? ' is-invalid' : ''); ?>" name="password" required>
                            <?php if($errors->has('password')): ?>
                                <span class="invalid-feedback">
                                        <strong><?php echo e($errors->first('password')); ?></strong>
                                    </span>
                            <?php endif; ?>
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
                            <input id="telephone" type="text" placeholder="0918......" class="form-control<?php echo e($errors->has('telephone') ? ' is-invalid' : ''); ?>" name="telephone" value="<?php echo e(old('telephone')); ?>" required autofocus>
                            <?php if($errors->has('telephone')): ?>
                                <span class="invalid-feedback">
                                        <strong><?php echo e($errors->first('telephone')); ?></strong>
                                    </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <h1>Fakturačné údaje</h1>
                    <div class="form-group row justify-content-around">
                        <label for="mame_f" class="col-4 col-lg-3 col-form-label">Meno a priezvisko:</label>
                        <div class="col-8 col-lg-7">
                            <input  onkeyup="change();" id="name_f" type="text" placeholder="Jo... Mrk..." class="form-control<?php echo e($errors->has('name_f') ? ' is-invalid' : ''); ?>" name="name_f" value="<?php echo e(old('name_f')); ?>" required>
                            <?php if($errors->has('name_f')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('name_f')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="street_f" class="col-4 col-lg-3 col-form-label">Ulica:</label>
                        <div class="col-8 col-lg-7">
                            <input onkeyup="change();" id="street_f" type="text" placeholder="zadaj ulicu" class="form-control<?php echo e($errors->has('street_f') ? ' is-invalid' : ''); ?>" name="street_f" value="<?php echo e(old('street_f')); ?>" required>
                            <?php if($errors->has('street_f')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('street_f')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="city_f" class="col-4 col-lg-3 col-form-label">Mesto:</label>
                        <div class="col-8 col-lg-7">
                            <input onkeyup="change();" id="city_f" type="text" placeholder="zadaj mesto" class="form-control<?php echo e($errors->has('city_f') ? ' is-invalid' : ''); ?>" name="city_f" value="<?php echo e(old('city_f')); ?>" required autofocus>
                            <?php if($errors->has('city_f')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('city_f')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="zip_f" class="col-4 col-lg-3 col-form-label">PSČ:</label>
                        <div class="col-8 col-lg-7">
                            <input onkeyup="change();" id="zip_f" type="text" placeholder="zadaj psč" class="form-control<?php echo e($errors->has('zip_f') ? ' is-invalid' : ''); ?>" name="zip_f" value="<?php echo e(old('zip_f')); ?>" required autofocus>
                            <?php if($errors->has('zip_f')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('zip_f')); ?></strong>
                            </span>
                            <?php endif; ?>
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
                            <input id="name_d" type="text" placeholder="Joz... Mrk..." class="form-control<?php echo e($errors->has('name_d') ? ' is-invalid' : ''); ?>" name="name_d" value="<?php echo e(old('name_d')); ?>" required>
                            <?php if($errors->has('name_d')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('name_d')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="street_d" class="col-4 col-lg-3 col-form-label">Ulica:</label>
                        <div class="col-8 col-lg-7">
                            <input id="street_d" type="text" placeholder="zadaj ulicu" class="form-control<?php echo e($errors->has('street_d') ? ' is-invalid' : ''); ?>" name="street_d" value="<?php echo e(old('street_d')); ?>" required>
                            <?php if($errors->has('street_d')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('street_d')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="city_d" class="col-4 col-lg-3 col-form-label">Mesto:</label>
                        <div class="col-8 col-lg-7">
                            <input id="city_d" type="text" placeholder="zadaj mesto" class="form-control<?php echo e($errors->has('city_d') ? ' is-invalid' : ''); ?>" name="city_d" value="<?php echo e(old('city_d')); ?>" required autofocus>
                            <?php if($errors->has('city_d')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('city_d')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="form-group row justify-content-around">
                        <label for="zip_d" class="col-4 col-lg-3 col-form-label">PSČ:</label>
                        <div class="col-8 col-lg-7">
                            <input id="zip_d" type="text" placeholder="zadaj psč" class="form-control<?php echo e($errors->has('zip_d') ? ' is-invalid' : ''); ?>" name="zip_d" value="<?php echo e(old('zip_d')); ?>" required autofocus>
                            <?php if($errors->has('zip_d')): ?>
                                <span class="invalid-feedback">
                                <strong><?php echo e($errors->first('zip_d')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-lg-10 next_button_2 next_price justify-content-end row">
                        <button class="next_button_2 btn btn-primary" type="submit">
                            <?php echo e(__('Registrovať')); ?>

                        </button>
                    </div>
                </form>
            </div>
        </div>
    </main>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>