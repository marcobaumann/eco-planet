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
    'menu-1' => esc_html__( 'Menu Principal', 'ecoplanet_2019' ),
    //'menu-2' => esc_html__( 'Menu Inferior', 'ecoplanet_2019' ),
  ) );
}
add_action( 'after_setup_theme', 'register_menus' );



/* REGISTRO DE SCRIPTS E STYLES */
function enqueue_styles_scripts(){
  // Frameworks CSS
  wp_enqueue_style("swiper", get_template_directory_uri() . '/dist/css/swiper.min.css', array(), ASSETS_VERSION, 'all');

  // Estilo do Tema
  wp_enqueue_style("index", get_template_directory_uri() . '/dist/css/index.min.css', array(), ASSETS_VERSION, 'all');

  // Frameworks JS
  wp_enqueue_script( 'jquery', get_template_directory_uri() . '/dist/js/vendor/jquery.js', array(), ASSETS_VERSION, true );
  wp_enqueue_script( 'swiper', get_template_directory_uri() . '/dist/js/vendor/swiper.min.js', array(), ASSETS_VERSION, true );

  wp_enqueue_script("main", get_template_directory_uri() . '/dist/js/application.js', array("jquery"), ASSETS_VERSION, true);

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