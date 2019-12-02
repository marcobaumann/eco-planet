<?php
// Template Name: Homepage
?>

<header>
    <img <?php awesome_acf_responsive_image(get_field('imagem_hero'), 'full', '1400px' ); ?> >
    <div class="mask"></div>
    <div class="filter"></div>
    <div class="content">
      <div class="container">
        <div class="uppercase-text -white mb-20"><?php echo get_field('supra_titulo'); ?></div>
        <h1 class="-white"><?php echo get_field('titulo'); ?></h1>
        <a href="<?php echo get_field('link_do_botao'); ?>" class="button -solid -green mt-20"><?php echo get_field('label_botao'); ?></a>
      </div>
    </div>
</header>

<section class="intro">
    <div class="container">
      <h4 class="-blue"><?php echo get_field('descricao'); ?></h4>
    </div>
</section>

  <section class="product-banner">
    <div class="container">
      <div class="content">
        <h2 class="-blue"><?php echo get_field('titulo_produtos'); ?></h2>
        <a href="<?php echo get_field('link_botao_produtos'); ?>" class="button -solid -green mt-10"><?php echo get_field('label_botao_produtos'); ?></a>
      </div>
      <img <?php awesome_acf_responsive_image(get_field('imagem_produtos'), 'full', '1400px'); ?>>
    </div>
  </section>

  <section class="quotes">
    <div class="container">
      <div class="swiper-container">
        <div class="swiper-wrapper">
        <?php if (get_field('depoimentos')): ?>
            <?php while(have_rows('depoimentos')): the_row();?>
                <div class="swiper-slide">
                    <img class="quote-top mb-40" src="<?php echo get_asset_uri('img/quote-top.svg');?>" />
                    <p class="-white mb-40"><?php echo get_sub_field('depoimento'); ?></p>
                    <div class="quote-name mb-10 -white"><?php echo get_sub_field('autor'); ?></div>
                    <div class="quote-description -white"><?php echo get_sub_field('cargo_autor'); ?></div>
                    <img class="quote-bottom mt-40" src="<?php echo get_asset_uri('img/quote-bottom.svg');?>" />
                </div>
            <?php endwhile; ?>
        <?php endif; ?>

        </div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </div>
  </section>


  <section class="top-news">
    <div class="container">
      <div class="news-header">
        <h2 class="-blue">Notícias</h2>
        <a href="/blog" class="button -solid -green">Ver todas</a>
      </div>
      <div class="news-wrapper">
        <div class="row">

        <?php query_posts( 'posts_per_page=3' ); ?>

        <?php while ( have_posts() ) : the_post(); ?>
            <div class="col-md-4">
                <a href="<?php the_permalink(); ?>" class="-wrapper-hover">
                    <img src="<?php the_post_thumbnail_url() ?>" alt="">
                    <h5 class="-blue mt-20"><?php the_title(); ?></h5>
                    <p class="-grey"><?php the_excerpt(); ?></p>
                    <div class="button -outline -blue mt-20">Ler agora</div>
                </a>
            </div>
        <?php endwhile; ?>  

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
