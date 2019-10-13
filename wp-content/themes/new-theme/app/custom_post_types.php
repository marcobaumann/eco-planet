<?php
function register_cpts(){
  	//create_imprensa_cpt();

	flush_rewrite_rules();
 
}

add_action( 'init', 'register_cpts', 0 );


function create_imprensa_cpt() {
	$labels = array(
		'name'                  => _x( 'Press Releases', 'Post Type General Name', 'magnet_2019' ),
		'singular_name'         => _x( 'Press Release', 'Post Type Singular Name', 'magnet_2019' ),
		'menu_name'             => __( 'Press Releases', 'magnet_2019' ),
		'name_admin_bar'        => __( 'Press Release', 'magnet_2019' ),
		'archives'              => __( 'Lista de Releases', 'magnet_2019' ),
		'attributes'            => __( 'Atributos', 'magnet_2019' ),
		'parent_item_colon'     => __( 'Item-pai:', 'magnet_2019' ),
		'all_items'             => __( 'Todos os itens', 'magnet_2019' ),
		'add_new_item'          => __( 'Adicionar novo Release', 'magnet_2019' ),
		'add_new'               => __( 'Nova Release', 'magnet_2019' )
	);
	$rewrite = array(
		'slug'                  => 'press-release',
		'with_front'            => true,
		'pages'                 => true,
		'feeds'                 => true,
	);
	$args = array(
		'label'                 => __( 'Press Release', 'magnet_2019' ),
		'description'           => __( 'Press releases', 'magnet_2019' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'excerpt', 'custom-fields', 'post-formats' ),
		'taxonomies'            => array( 'press_category' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-media-document',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => 'press-release',
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'rewrite'               => $rewrite,
		'capability_type'       => 'page',
		'show_in_rest'          => true,
	);
	register_post_type( 'imprensa', $args );
}

	

