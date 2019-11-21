<?php
// Template Name: Produtos
?>

<header>
    <img <?php awesome_acf_responsive_image(get_field('imagem_hero'), 'full', '1400px' ); ?> >
    <div class="mask"></div>
    <div class="filter"></div>
    <div class="content">
      <div class="container">
        <div class="uppercase-text -white mb-20"><?php echo get_field('supra_titulo'); ?></div>
        <h1 class="-white"><?php echo get_field('titulo'); ?></h1>
      </div>
    </div>
</header>

<section class="products-grid">
    <div class="container">
      <h2 class="-blue mb-50">Todos os produtos</h2>
      <div class="row">
      <?php 
          $args = array(
            'post_type' => 'produto',
            'page' => -1

          );
          $the_query = new WP_Query( $args );
          if ( $the_query->have_posts() ) :
            while ( $the_query->have_posts() ) :
              $the_query->the_post();
          ?>
        <div class="col-lg-4 col-md-6">
          <a href="<?php echo get_the_permalink();?>" class="item-wrapper -wrapper-hover">
            <div class="item-image-wrapper">
            <?php if(has_post_thumbnail()): ?>
              <img <?php awesome_acf_responsive_image(get_post_thumbnail_id(), '', '900px' ); ?>>
            <?php endif; ?>
            </div>
            <h2 class="-blue mt-20"><?php the_title(); ?></h2>
            <p class="-blue mb-20"><?php echo get_the_excerpt();?></p>
            <div class="button -outline -blue">Saiba mais</div>
          </a>
        </div>
        <?php 
            endwhile;
             /* Restore original Post Data */
              wp_reset_postdata();
          endif;
          ?>
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
