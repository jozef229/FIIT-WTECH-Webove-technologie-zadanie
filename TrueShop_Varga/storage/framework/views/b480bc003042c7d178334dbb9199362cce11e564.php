<!doctype html>
<html lang="sk">

<?php echo $__env->make('layouts.partials.head', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

    <body>
        <?php echo $__env->make('layouts.partials.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->make('layouts.partials.nav', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->yieldContent('content'); ?>
        <?php echo $__env->make('layouts.partials.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </body>
</html>