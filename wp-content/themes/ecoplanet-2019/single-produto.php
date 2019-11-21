  <section class="product">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2 class="-blue mb-20"><?php the_title(); ?></h2>
          <div class="post-content -blue"><?php the_content(); ?></div>
        </div>
        <div class="col-md-6">
          <div class="image-product">
          <?php if(has_post_thumbnail()): ?>
            <img <?php awesome_acf_responsive_image(get_post_thumbnail_id(), 'full', '1400px' ); ?>>
          <?php endif; ?>
          </div>
        </div>
      </div>


    </div>
  </section>

  <section class="extra-info">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <?php if(has_post_thumbnail()): ?>
            <img <?php awesome_acf_responsive_image(get_field('imagem_detalhamento'), '', '1400px' ); ?>>
          <?php endif; ?>

        </div>
        <div class="col-md-6">
          <h2 class="-white mb-20"><?php echo get_field('titulo_detalhamento'); ?></h2>
          <p class="-white"><?php echo get_field('detalhamento'); ?></p>

        </div>
      </div>
    </div>
  </section>
  <?php
    $produtos = get_field('veja_tambem');
     if($produtos): ?>
  <section class="see-also">
    <div class="background"></div>
    <div class="container mt-40">
      <div class="swiper-container">
        <div class="see-also-header mb-40">
          <h2 class="-white">Veja também</h2>
          <a href="/produtos" class="button -solid -white">ver todos os produtos</a>
        </div>

        <div class="swiper-wrapper">
        <?php foreach( $produtos as $post): // variable must be called $post (IMPORTANT) ?>
        <?php setup_postdata($post); ?>
          <div class="swiper-slide">
            <a href="<?php the_permalink(); ?>" class="item-wrapper -wrapper-hover">
              <div class="item-image-wrapper">
              <?php if(has_post_thumbnail()): ?>
                <img <?php awesome_acf_responsive_image(get_post_thumbnail_id(), '', '1400px' ); ?>>
              <?php endif; ?>
              </div>
              <h2 class="-blue mt-20"><?php the_title(); ?></h2>
              <p class="-blue mb-20"><?php echo get_the_excerpt(); ?></p>
              <div class="button -outline -blue">Saiba mais</div>
            </a>
          </div>
        <?php endforeach; ?>

        </div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </div>
  </section>
        <?php endif; ?>


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

