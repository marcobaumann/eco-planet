<?php
// Template Name: Blog
?>

<section class="news">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="-blue mb-20">Blog</h2>
        </div>

        <div class="col-md-8">
          <div class="posts-wrapper">
          <?php 
          $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
          
          $args = array(
            'post_type' => 'post',
            'page' => $paged

          );
          $the_query = new WP_Query( $args );
          if ( $the_query->have_posts() ) :
            while ( $the_query->have_posts() ) :
              $the_query->the_post();
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
          endif;
          ?>

          </div>
          <!-- paginacao -->
          <?php wpbeginner_numeric_posts_nav($the_query); ?>
          
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
