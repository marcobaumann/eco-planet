<script>
    var $ = jQuery;
</script>
<?php
if (!is_search()){

  the_post(); 
}
?>
<nav>
      <div class="container">
        <div>
          <a href="/">
            <img src="<?php echo get_asset_uri('img/logo-ecoplanet.jpg');?>" alt="Logomarca Ecoplanet" class="logo">
          </a>

          <div class="align-menu-mobile">
            <div class="button -outline -blue -s-mobile mobile-buy">
                Comprar
                <div class="buy-modal">
                  <p class="mb-20">Entre em contato via telefone ou email:</p>
                  <a class="-blue phone" ><?php echo get_field('telefone_1', 'option');?></a>
                  <a class="-blue phone" ><?php echo get_field('telefone_2', 'option');?></a>
                  <a class="mail" href="mailto:<?php echo get_field('e-mail', 'option');?>"><?php echo get_field('e-mail', 'option');?></a>
                  <p>Nossos produtos são encontrados em todo território nacional através dos nossos distribuidores e
                    parceiros. </p>
                </div>
              </div>
            <div class="open-menu -s-mobile">
              <img src="<?php echo get_asset_uri('img/icon-menu.svg');?>" alt="">
            </div>
        
          </div>
          
          <div class="menu">

            <?php wp_nav_menu(); ?>
            
            <div class="close-menu -s-mobile">

            <img src="<?php echo get_asset_uri('img/icon-close.svg');?>" alt="">
            </div>

            <div class="social -s-mobile">
                <a href="https://www.facebook.com/ecoplanetflorianopolis" target="_blank">
                <img src="<?php echo get_asset_uri('img/facebook.png');?>" alt="Logo Facebook" height="17">
                </a>
                <a href="https://www.instagram.com/ecoplanetfpolis/" target="_blank">
                <img src="<?php echo get_asset_uri('img/instagram.png');?>" alt="Logo Instagram" height="21">
                </a>
            </div>
            
            <div class="button -outline -blue -h-mobile">
              Comprar
              <div class="buy-modal">
                <p class="mb-20">Entre em contato via telefone ou email:</p>
                <a class="-blue phone" ><?php echo get_field('telefone_1', 'option');?></a>
                <a class="-blue phone" ><?php echo get_field('telefone_2', 'option');?></a>
                <a class="mail" href="mailto:<?php echo get_field('e-mail', 'option');?>"><?php echo get_field('e-mail', 'option');?></a>
                <p>Nossos produtos são encontrados em todo território nacional através dos nossos distribuidores e
                  parceiros. </p>
              </div>
            </div>
          </div>
  
        </div>
  
      </div>
    </nav>

  