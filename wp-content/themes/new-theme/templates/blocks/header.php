<script>
    var $ = jQuery;
</script>


<header>
    <div class="wrap">
        <div class="logo-wrapper">
            <a href="/" title="Home">
            </a>
        </div>

        <div class="menu-wrapper">
            <?php wp_nav_menu(); ?>
        </div>

        
      
        <div class="right">
            <div class="open-menu -s-mobile">
                <svg width="36px" height="27px" viewBox="0 0 36 27" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="square">
                        <g id="Landing-Page" transform="translate(-854.000000, -1385.000000)" stroke="#322F31" stroke-width="1.78947368">
                            <g id="Group" transform="translate(855.000000, 1386.000000)">
                                <path d="M0,0.5 L34,0.5" id="a"></path>
                                <path d="M0,12.5 L34,12.5" id="b"></path>
                                <path d="M0,24.5 L34,24.5" id="c"></path>
                            </g>
                        </g>
                    </g>
                </svg>
            </div>
            <a href="<?php the_field('loja_magnet', 'options') ?>" target="_blank" class="button -outline hidden">Loja</a>
            <div class="social -h-mobile">
                <a href="<?php the_field('facebook_magnet', 'options') ?>" target="_blank" class="social-item -facebook">
                    <img src="<?php bloginfo('template_directory'); ?>/dist/img/icon-facebook.svg" alt="">
                </a>
                <a href="<?php the_field('instagram_magnet', 'options') ?>" target="_blank" class="social-item -instagram">
                    <img src="<?php bloginfo('template_directory'); ?>/dist/img/icon-instagram.svg" alt="">
                </a>
            </div>
        </div>

    </div>
</header>

<a class="whats-link" href="https://wa.me/<?php the_field('telefone_do_whatsapp', 'options'); ?>">
    <i class="whats fa fa-whatsapp fa-5x"></i>
</a>