<?php

// Initializes all the action
function boilerplate_init(){

    // Register new menus
    register_menus();
    setup_media();
    //register_cpts();
    //register_categories();
    setup_options_page();
    add_post_type_support( 'page', 'excerpt' );
}
add_action('init', 'boilerplate_init');


//REDIRECTS
add_action( 'template_redirect', function() {
   //Redirect /imprensa/ -> /imprensa/press-release/
    // if (is_page('imprensa')) {
    //     wp_redirect( get_post_type_archive_link('imprensa') , 301);
    //     exit();
    // }
 });

/* LIMPEZA DO HEAD */
function clean_head() {
    // all actions related to emojis
    remove_action( 'admin_print_styles', 'print_emoji_styles' );
    remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
    remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
    remove_action( 'wp_print_styles', 'print_emoji_styles' );
    remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
    remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
    remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
    add_filter( 'emoji_svg_url', '__return_false' );

    remove_action('wp_head', 'rsd_link');
    remove_action('wp_head', 'wp_generator');
    remove_action('wp_head', 'feed_links', 2 );
    remove_action('wp_head', 'feed_links_extra', 3 );
    remove_action('wp_head', 'index_rel_link');
    remove_action('wp_head', 'wlwmanifest_link');
    remove_action('wp_head', 'parent_post_rel_link', 10, 0);
    remove_action('wp_head', 'start_post_rel_link');
    remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');
    remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);
}
add_action( 'init', 'clean_head' );


/* REGISTRO DE MENUS */
function register_menus(){
  register_nav_menus( array(
    'menu-1' => esc_html__( 'Menu Principal', 'magnet_2019' ),
    //'menu-2' => esc_html__( 'Menu Inferior', 'magnet_2019' ),
  ) );
}
add_action( 'after_setup_theme', 'register_menus' );



/* REGISTRO DE SCRIPTS E STYLES */
function enqueue_styles_scripts(){
  // Frameworks CSS
//   wp_enqueue_style('main_css', get_asset_uri('css/main.min.css'), null, ASSETS_VERSION, 'all' );
//   wp_enqueue_style('ie_css',   get_asset_uri('css/ie.min.css'), array('main_css'), ASSETS_VERSION, 'all' );
//   wp_enqueue_style("reset",get_template_directory_uri() . '/dist/css/reset.min.css', array(), ASSETS_VERSION, 'all');
  wp_enqueue_style("bootstrap",get_template_directory_uri() . '/dist/css/bootstrap.min.css', array(), ASSETS_VERSION, 'all');
//   wp_enqueue_style("animate",get_template_directory_uri() . '/dist/css/animate.min.css', array(), ASSETS_VERSION, 'all');
//   wp_enqueue_style("swiper", get_template_directory_uri() . '/dist/css/swiper.min.css', array(), ASSETS_VERSION, 'all');
//   wp_enqueue_style("multi-select", get_template_directory_uri() . '/dist/css/multiple-select.min.css', array(), ASSETS_VERSION, 'all');
//   wp_enqueue_style("aos", get_template_directory_uri() . '/dist/css/aos.min.css', array(), ASSETS_VERSION, 'all');
//   wp_enqueue_style("daterangepicker", get_template_directory_uri() . '/dist/css/daterangepicker.min.css', array(), ASSETS_VERSION, 'all');
   wp_enqueue_style('fontawesome', get_template_directory_uri() . '/dist/css/font-awesome.min.css', array(), '4.7.0', 'all' );
//   wp_enqueue_style("timeline-swiper", get_template_directory_uri() . '/dist/css/timeline.swiper.min.css', array(), ASSETS_VERSION, 'all');

  // Estilo do Tema
  wp_enqueue_style("index", get_template_directory_uri() . '/dist/css/index.min.css', array(), ASSETS_VERSION, 'all');

  // Frameworks JS
  wp_enqueue_script( 'modernizr', get_template_directory_uri() . '/dist/js/vendor/modernizr.custom.js', array(), ASSETS_VERSION, true );
  wp_enqueue_script( 'jquery', get_template_directory_uri() . '/dist/js/vendor/jquery-2.2.0.min.js', array(), ASSETS_VERSION, true );

//   wp_enqueue_script( 'momentjs', get_template_directory_uri() . '/dist/js/vendor/moment-with-locales.min.js', array(), ASSETS_VERSION, true );
//   wp_enqueue_script( 'knockout', get_template_directory_uri() . '/dist/js/vendor/knockout-3.4.2.js', array(), ASSETS_VERSION, true );
//   wp_enqueue_script( 'daterangepicker', get_template_directory_uri() . '/dist/js/vendor/daterangepicker.min.js', array("jquery"), ASSETS_VERSION, true );


//   wp_enqueue_script( "bootstrapjs", get_template_directory_uri() . '/dist/js/vendor/bootstrap.min.js', array("jquery"), ASSETS_VERSION, true);
//   wp_enqueue_script( 'multi-select', get_template_directory_uri() . '/dist/js/vendor/multiple-select.js', array(), ASSETS_VERSION, true );
//   wp_enqueue_script( 'autosize', get_template_directory_uri() . '/dist/js/vendor/autosize.js', array(), ASSETS_VERSION, true );
  wp_enqueue_script( 'swiper', get_template_directory_uri() . '/dist/js/vendor/swiper.min.js', array(), ASSETS_VERSION, true );
//   wp_enqueue_script( 'mask', get_template_directory_uri() . '/dist/js/vendor/jquery.mask.min.js', array(), ASSETS_VERSION, true );
//   wp_enqueue_script( 'socialjs', get_template_directory_uri() . '/dist/js/vendor/jssocials.min.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'aos', get_template_directory_uri() . '/dist/js/vendor/aos.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'masonry', get_template_directory_uri() . '/dist/js/vendor/masonry.min.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'imagesloaded', get_template_directory_uri() . '/dist/js/vendor/imagesloaded.pkgd.min.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'classie', get_template_directory_uri() . '/dist/js/vendor/classie.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'fotorama', get_template_directory_uri() . '/dist/js/vendor/fotorama.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'momentjs', get_template_directory_uri() . '/dist/js/vendor/moment.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'parsleyjs', get_template_directory_uri() . '/dist/js/vendor/parsleyjs.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'chartjs', get_template_directory_uri() . '/dist/js/vendor/Chart.js', array('momentjs'), '2.7.3', true );
//   wp_enqueue_script( 'chartjs_datalabel', get_template_directory_uri() . '/dist/js/vendor/chartjs-plugin-datalabels.js', array('chartjs'), '0.4.0', true );

  wp_enqueue_script( 'lodash', get_template_directory_uri() . '/dist/js/vendor/lodash.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'debounce', get_template_directory_uri() . '/dist/js/vendor/jquery.ba-throttle-debounce.min.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'aim', get_template_directory_uri() . '/dist/js/vendor/jquery.menu-aim.js', array("jquery"), ASSETS_VERSION, true );
//   wp_enqueue_script( 'xlsx', get_template_directory_uri() . '/dist/js/vendor/xlsx.full.min.js', array("jquery"), '0.14.0', true );

  // JS Scripts do Tema
  //wp_enqueue_script("main", get_template_directory_uri() . '/js/main.js', array("jquery"), ASSETS_VERSION, true);
  //wp_enqueue_script("menu", get_template_directory_uri() . '/js/menu.js', array("jquery"), ASSETS_VERSION, true);
  wp_enqueue_script("main", get_template_directory_uri() . '/dist/js/application.js', array("jquery"), ASSETS_VERSION, true);
//   wp_enqueue_script('ajax-load-more');

  wp_style_add_data( 'ie_css', 'conditional', 'lt IE 9' );

  //wp_enqueue_script('main_js',  get_asset_uri('js/application.js'), null, ASSETS_VERSION, true );
}
add_action('wp_enqueue_scripts', 'enqueue_styles_scripts');


function w16_async_scripts($url){
    if ( strpos( $url, '#asyncload') === false )
        return $url;
    else if ( is_admin() )
        return str_replace( '#asyncload', '', $url );
    else
	return str_replace( '#asyncload', '', $url )."' async='async";
}
add_filter( 'clean_url', 'w16_async_scripts', 11, 1 );

function setup_media(){

    define('IMG_SMALL', 'thumbnail');
    define('IMG_MEDIUM', 'medium');
    define('IMG_LARGE', 'large');

    add_theme_support( 'post-thumbnails' );
}

/* REGISTRO DE PAGINA DE CONFIGURACOES */
function setup_options_page(){

    if( function_exists('acf_add_options_page') ) {

    	$option_page = acf_add_options_page(array(
    		'page_title' 	=> 'Configurações Gerais',
    		'menu_title' 	=> 'Configurações Gerais',
    		'menu_slug' 	=> 'configuracoes-gerais',
    		'capability' 	=> 'edit_posts',
    		'redirect' 	=> false
    	));
    }
}

// Normaliza todos os search para /search
function theme_change_search_url() {
    if ( is_search() && ! empty( $_GET['s'] ) ) {
        $url = home_url( "/search/" ) . urlencode( get_query_var( 's' ) );

        if( ! empty( $_GET['search_type'] ) ){
            $url = $url . '?search_type=' . get_query_var( 'search_type' ) ;
        }
        wp_redirect(  $url );
        exit();
    }
}
// add_action( 'template_redirect', 'theme_change_search_url' );