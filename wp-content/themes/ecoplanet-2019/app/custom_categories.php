<?php

function register_categories(){
  //create_press_release_category();
  
}


add_action( 'init', 'register_categories', 0 );
 
//create a custom taxonomy name it topics for your posts
 
function create_press_release_category() {
    // Categoria de Releases
  $labels = array(
    'name' => _x( 'Tipos Release', 'taxonomy general name' ),
    'singular_name' => _x( 'Tipo Release', 'taxonomy singular name' ),
    'search_items' =>  __( 'Pesquisar Tipos Release' ),
    'all_items' => __( 'Todos Tipos Release' ),
    'parent_item' => __( 'Tipo Release-pai' ),
    'parent_item_colon' => __( 'Tipo Release-pai:' ),
    'edit_item' => __( 'Editar Tipo Release' ), 
    'update_item' => __( 'Atualizar Tipo Release' ),
    'add_new_item' => __( 'Adicionar Tipo Release' ),
    'new_item_name' => __( 'Novo Tipo Release' ),
    'menu_name' => __( 'Tipo Release' ),
  );    
 
  register_taxonomy('tipo-release',array('imprensa'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'tipo-release' ),
  ));
 
}


