<?php
/**
 * Template Name: Busca
 */

global $wp_query;
global $query_string;


$page  = max( 1, get_query_var( 'paged' ) );
$ppp   = get_query_var('posts_per_page');
$start = $ppp * ( $page - 1 ) + 1;
$end   = $start + $wp_query->post_count - 1;
$total = $wp_query->found_posts;

?>


<div class="main">
  <div class="wrap">
<?php 
	if ($total > 0):
	?>
		<div class="return">
			Você está visualizando resultados para <span>"<?php echo get_search_query() ?>"</span>
		</div>
	<?php
	else:
	?>
		<div class="return">
		Não foram encontrados resultados para <span>"<?php echo get_search_query() ?>"</span>. Tente outro termo.
		</div>
	<?php
	endif;
?>

    <div class="">

      <div class="grid">

      <?php 
      
      // The Loop
      if ( have_posts() ) {
        while ( have_posts() ) {
          the_post();
          ?>
          <div class="item">
            <div class="item-inner">
              <img <?php awesome_acf_responsive_image(get_post_thumbnail_id(get_the_ID()), '' , '1350px' ) ?> alt="">
              <h3 class=""><?php the_title(); ?></h3>
              <p class=""><?php echo wp_trim_words(get_the_excerpt(), 40, ' [...]'); ?></p>
              <a href="<?php the_permalink();?>" class="button -full-orange">
                <span>
                  Saiba mais
                </span>
              </a>
            </div>
          </div>
          <?php
        }
        /* Restore original Post Data */
        wp_reset_postdata();
      }

    
    ?>

      <?php echo news_pagination($wp_query->max_num_pages, 4); ?>
     

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

  </div>

</div>