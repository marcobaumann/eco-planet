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



<section class="news">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h4 class="-blue mb-20">Resultado(s) para <b>"<?php echo get_search_query() ?>"</b></h4>
        </div>


        <div class="col-md-8">
          <div class="posts-wrapper">
          <?php 
          $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
          
         
         
          if (have_posts() ) :
            while ( have_posts() ) :
              the_post();
          ?>
            <a href="<?php the_permalink(); ?>" class="post">
              <?php if(has_post_thumbnail()): ?>
                <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_title(); ?>">
              <?php endif; ?>
              <div class="news-post-content">
                <div class="title -blue mb-10"><?php the_title(); ?></div>
                <p class="-grey"><?php echo get_the_excerpt(); ?></p>
              </div>
            </a>
          <?php 
            endwhile;
             /* Restore original Post Data */
              wp_reset_postdata();
          else:
            ?>
          <div class="no-result">
            <h5 class="-grey">Nenhuma notícia encontrada. Tente outro termo.</h5>
          </div>

            <?php
          endif;
          ?>

          </div>
          <!-- paginacao -->
          <?php 
          global $wp_query;
          
          wpbeginner_numeric_posts_nav($wp_query); ?>
          
        </div>
        <!-- Coluna lateral -->
        <div class="col-md-4">
          <div class="box-categories">
            <div class="text-uppercase -blue mb-10">Buscar por</div>
            <div class="search-wrapper">
              <form action="/">
                <input name="s" type="text" placeholder="Escreva aqui...">
                <button class="search" type="submit">
                  <img src="<?php echo get_asset_uri('img/search.svg');?>" alt="">
                </button>
              </form>
            </div>
            <div class="text-uppercase -blue mb-10 mt-50">Categorias</div>
            <?php wp_list_categories(array('title_li' => '', 'exclude' => array(1) )); ?>
          </div>
        </div>
      </div>

    </div>
  </section>



  <section class="map">
    <a href="https://goo.gl/maps/fryV7SAecZsQZWzS7" target="_blank" class="map-wrapper">
      <img src="<?php echo get_asset_uri('img/map.jpg');?>" alt="" class="map-image">
      <img src="<?php echo get_asset_uri('img/pin.svg');?>" alt="" class="pin">
    </a>
    <div class="container">
      <div class="content-box">
        <a class="-blue phone" href=""><?php echo get_field('telefone_2', 'options');?></a>
        <a class="mail" href="mailto:<?php echo get_field('e-mail', 'options');?>"><?php echo get_field('e-mail', 'options');?></a>
        <div class="address -blue">
            <?php echo get_field('endereco', 'options');?>
        </div>
      </div>
    </div>
  </section>
