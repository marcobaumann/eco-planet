<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package Ecoplanet-2019
 */
?>

<main>    
<?php // echo template_part('/templates/blocks/banner-hero', array( 'titulo' => "Resultados da Pesquisa")); ?>
<?php //echo template_part('/templates/blocks/banner-hero', array( 'id' => 3050)) ?>


  <section id="error" class="wrap">
    <div class="container">
      <div class="error-main">
        <img src="<?php bloginfo('template_directory'); ?>/dist/img/404.svg" alt="">
      </div>
      <div class="mb-60"></div>
      <div class="search-main">
        <div class="view-error">
          <h4 class="medium-grey mb-30">Tente a nossa busca:</h4>
          <div class="input-wrapper -no-margin">
            <form action="/">
              <div class="search-input">
                <input type="search" name="s" id="input-search" class="search-all" placeholder="Busque em nosso site...">
                <button  type="submit" class="button no-background has-icon"><span class="text">Buscar</span><i class="material-icons">&#xE5C8;</i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="mb-60"></div>
    </div>
  </section>
</main>
