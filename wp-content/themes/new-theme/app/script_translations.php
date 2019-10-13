<?php

function translate_scripts(){

	// Essa função cria um objeto javascript chamado window.wp_translations
	// e adiciona os índices definidos abaixo já traduzidos de acordo com a língua ativa
	// chamar em qualquer arquivo JS da seguinte maneira: wp_translations.no_documents
	wp_localize_script( 'main', 'wp_translations', array(
		//'no_documents'  		=> __('Não há nenhum documento no período ou no idioma selecionado.', 'magnet_2019'),
		//'no_data'  				=> __('Não há nenhum dado no período selecionado.', 'magnet_2019'),
	) );

}
add_action('wp_enqueue_scripts', 'translate_scripts');
