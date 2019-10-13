<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">

  <?php get_template_part('templates/blocks/html_head'); ?>

  <body ontouchstart="" <?php body_class(); ?> data-language="<?php  echo  ( defined('ICL_LANGUAGE_CODE')? ICL_LANGUAGE_CODE : 'pt-br') ?>">
  
    <?php if(!isset($post)){
      $post = new stdClass();
      $post->ID = 0;
    } ?>

    <?php template_part('templates/blocks/header', array('post_id'=>$post->ID));?>

    <!-- <section class="content"> -->
      <?php include Wrapper\template_path(); ?>
    <!-- </section> -->

    <?php  get_template_part('templates/blocks/footer');?>

  </body>
</html>