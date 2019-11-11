<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="description" content="<?php bloginfo('description')?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="telephone=no" name="format-detection">



    <!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> -->
    <!-- <link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/dist/img/favicon.jpg"> -->
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <?php if (is_singular() && pings_open(get_queried_object())) : ?>
      <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <?php endif; ?>
    <?php wp_head(); ?>

    <link href="https://fonts.googleapis.com/css?family=Oswald:400,500|Rubik:400,500" rel="stylesheet">
    
</head>