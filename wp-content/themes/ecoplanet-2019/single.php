<?php
/**
  * Template Name: Post 
*/
the_post();
?>


<div class="wrap mt-header">
  <div class="banner">
  <?php if(has_post_thumbnail()): ?>
        <img <?php awesome_acf_responsive_image(get_post_thumbnail_id(), '', '1350px' ) ?> alt="<?php echo get_the_title()?>"/>
      <?php endif; ?>
  </div>
</div>

<div class="news-complete">
  <div class="wrap">

    <div class="section-title">
        <span>Notícia</span>
        <h2><?php the_title(); ?></h2>
    </div>

    <div class="news-wrapper">

      <div class="post-body">

	  <?php the_content(); ?>

		<div class="post-footer">
			<?php 
			$prev_post = get_previous_post();
			if (!empty( $prev_post )): 
			?>
			<div class="prev">
				<div class="arrow"></div>
				<div class="content">
					<span>Notícia anterior</span>
					<a href="<?php echo get_the_permalink($prev_post->ID);?>">
					<div class="title-post"><?php echo get_the_title($prev_post->ID); ?></div>
				</a>

				</div>
			</div>
			<?php endif ?>
			<?php 
			$next_post = get_next_post();
			if (!empty( $next_post )): 
			?>
			
			<div class="next">
				<div class="arrow"></div>
				<div class="content">
					<span>Próxima Notícia</span>
					<a href="<?php echo get_the_permalink($next_post->ID);?>">
					<div class="title-post"><?php echo get_the_title($next_post->ID); ?></div>
					</a>
				</div>
			</div>
			<?php endif ?>
		</div>

      </div>

      <div class="categories-wrapper">
        <div class="categories">
		<h4>Buscar por</h4>
          <form action="/"  >
            <input name="s" type="text" placeholder="Buscar por...">
          </form>
          <h4>Categorias</h4>
          <ul>
              <?php wp_list_categories(array(
              // 'style' => 'list',
              'exclude' => array(1),
              'title_li' => ''
            )); ?>
           
          </ul>
        </div>
      </div>

    </div>

	<br/>
	<br/>
	<br/>
    
	<?php if ( is_plugin_active('disqus-comment-system/disqus.php') && false ) { comments_template(); } ?>
  </div>

</div>