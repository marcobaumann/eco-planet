<?php
function register_cpts(){
  	create_produto_cpt();

	flush_rewrite_rules();
 
}

add_action( 'init', 'register_cpts', 0 );


function create_produto_cpt() {
	$labels = array(
		'name'                  => _x( 'Produtos', 'Post Type General Name', 'ecoplanet_2019' ),
		'singular_name'         => _x( 'Produto', 'Post Type Singular Name', 'ecoplanet_2019' ),
		'menu_name'             => __( 'Produtos', 'ecoplanet_2019' ),
		'name_admin_bar'        => __( 'Produto', 'ecoplanet_2019' ),
		'archives'              => __( 'Lista de Produtos', 'ecoplanet_2019' ),
		'attributes'            => __( 'Atributos', 'ecoplanet_2019' ),
		'parent_item_colon'     => __( 'Item-pai:', 'ecoplanet_2019' ),
		'all_items'             => __( 'Todos os itens', 'ecoplanet_2019' ),
		'add_new_item'          => __( 'Adicionar novo Produto', 'ecoplanet_2019' ),
		'add_new'               => __( 'Novo Produto', 'ecoplanet_2019' )
	);
	$rewrite = array(
		'slug'                  => 'produto',
		'with_front'            => true,
		'pages'                 => true,
		'feeds'                 => true,
	);
	$args = array(
		'label'                 => __( 'Produtos', 'ecoplanet_2019' ),
		'description'           => __( 'Produtos', 'ecoplanet_2019' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'excerpt', 'custom-fields', 'post-formats', 'thumbnail' ),
		'taxonomies'            => array(),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-products',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => false,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'rewrite'               => $rewrite,
		'capability_type'       => 'post',
		'show_in_rest'          => true,
	);
	register_post_type( 'produto', $args );
}

	

