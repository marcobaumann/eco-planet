<header>
	<?php if(has_post_thumbnail()): ?>
		<img <?php awesome_acf_responsive_image(get_post_thumbnail_id(), 'full', '1400px' ); ?>>
	<?php endif; ?>
	<?php 
	$the_category = '';
	$categories = get_the_category();
	if ( ! empty( $categories ) ) {
		$the_category = esc_html( $categories[0]->name );   
	}
	?>
    <div class="mask"></div>
    <div class="filter"></div>
    <div class="content">
      <div class="container">
        <div class="uppercase-text -white mb-20"><?php echo $the_category; ?></div>
        <h1 class="-white"><?php the_title(); ?></h1>
      </div>
    </div>
  </header>

  
  <section class="news">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- <h2 class="-blue mb-20">Líder no mercado brasileiro de produtos para flores de corte
            </h2> -->
        </div>

        <div class="col-md-8">
          <div class="post-content">
			  <?php the_content(); ?>
           
          </div>

          <div class="other-post">
            <div class="left"></div>
            <div class="right"></div>
          </div>
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

