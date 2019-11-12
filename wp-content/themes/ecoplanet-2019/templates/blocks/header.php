<script>
    var $ = jQuery;
</script>
<?php
the_post(); 
?>
<nav>
      <div class="container">
        <div>
          <a href="/">
            <img src="<?php echo get_asset_uri('img/logo-ecoplanet.jpg');?>" alt="Logomarca Ecoplanet" class="logo">
          </a>
          <div class="menu">

            <?php wp_nav_menu(); ?>
            
            <div class="button -outline -blue">
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

  