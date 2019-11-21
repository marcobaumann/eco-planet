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

<section class="about">
    <div class="container">
      <div class="row">
        <div class="<?php echo (get_field('imagem_de_destaque')? 'col-md-6': ''); ?>">
          <h2 class="-blue mb-20"><?php the_title(); ?></h2>
          <p class="-blue"><?php the_content(); ?></p>
		</div>
		<?php if(get_field('imagem_de_destaque')): ?>
        <div class="col-md-6">
          <div class="image-about">
		  	<img <?php awesome_acf_responsive_image(get_field('imagem_de_destaque'), 'full', '1400px' ); ?> >
          </div>
		</div>
		<?php endif; ?>
      </div>
    </div>
  </section>

  <?php if(get_field('frase_destacada')): ?>
  <section class="intro">
    <div class="container">
      <h4 class="-blue"><?php echo get_field('frase_destacada'); ?></h4>
    </div>
  </section>
  <?php endif; ?>

  <?php if(get_field('titulo_produtos')): ?>
  <section class="product-banner">
    <div class="container">
      <div class="content">
		<h2 class="-blue"><?php echo get_field('titulo_produtos'); ?></h2>
		<?php if(get_field('label_botao_produtos')): ?>
			<a href="<?php echo get_field('link_botao_produtos'); ?>" class="button -solid -green mt-10"><?php echo get_field('label_botao_produtos'); ?></a>
		<?php endif; ?>
      </div>
      <img <?php awesome_acf_responsive_image(get_field('imagem_produtos'), 'full', '1400px'); ?>>
    </div>
  </section>
  <?php endif; ?>

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


 