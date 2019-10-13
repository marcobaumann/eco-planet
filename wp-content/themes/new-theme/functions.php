<?php
require_once('app/assets_version.php');
require_once('app/helpers.php');
require_once('app/wrapper.php');
require_once('app/custom_post_types.php');
require_once('app/custom_categories.php');
require_once('app/setup.php');
require_once('app/script_translations.php');
// require_once('app/instagram.php');

function theme_setup() {
	load_theme_textdomain( 'magnet_2019', get_template_directory() . '/languages' );
	add_theme_support( 'automatic-feed-links' );
	add_theme_support( 'title-tag' );
	add_theme_support( 'post-thumbnails' );
}
/* Disabilitando API REST */
add_action( 'after_setup_theme', 'theme_setup' );

add_filter( 'rest_authentication_errors', function( $result ) {
    if ( ! empty( $result ) ) {
        return $result;
    }
    if ( ! is_user_logged_in() ) {
        return new WP_Error( 'rest_not_logged_in', 'You are not currently logged in.', array( 'status' => 401 ) );
    }
    return $result;
});

/* Habilitar svg upload  */
function cc_mime_types($mimes) {
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');