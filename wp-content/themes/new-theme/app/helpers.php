<?php


function template_part( $tpl, $params = array()){
    $full_path =  $tpl . '.php';

    extract( $params );

    include(locate_template( $full_path ));
}

function get_asset_uri( $path ){
    return get_stylesheet_directory_uri() . '/dist/' . $path;
}

function make_script_async( $tag, $handle, $src ){
    if ( 'jquery' == $handle ) {
        return str_replace( '<script', '<script defer', $tag );
    }

    return $tag;
}
//add_filter( 'script_loader_tag', 'make_script_async', 10, 3 );

//Responsive ACF image
function awesome_acf_responsive_image($image_id,$image_size,$max_width){

	// check the image ID is not blank
	if($image_id != '') {

		// set the default src image size
		$image_src = wp_get_attachment_image_url( $image_id, $image_size );

		// set the srcset with various image sizes
		$image_srcset = wp_get_attachment_image_srcset( $image_id, $image_size );

		//$img_info =  wp_get_attachment( $image_id );
		//$alt_text = $img_info['caption'];

		//get alt for image
		$image_alt = get_post_meta( $image_id, '_wp_attachment_image_alt', true);

		// generate the markup for the responsive image
		echo 'src="'.$image_src.'" srcset="'.$image_srcset.'" sizes="(max-width: '.$max_width.') 100vw, '.$max_width.'" alt="'.$image_alt.'"';
	
	}
}


// Echoes the HTML of default thumbnail structure of an image in ACF
// Requires the ACF image to return the ID of attachment, not image URL
function the_field_image( $key, $size = 'large', $class = '' ){
    $attachment_id = get_field( $key );
    echo wp_get_attachment_image( $attachment_id, $size, false , array('class' => 'img ' . $class));
}

function latinizeString($texto) {
    $aa = str_replace( 
		array( 'à','á','â','ã','ä', 'ç', 'è','é','ê','ë', 'ì','í','î','ï', 'ñ', 'ò','ó','ô','õ','ö', 'ù','ú','û','ü', 'ý','ÿ', 'À','Á','Â','Ã','Ä', 'Ç', 'È','É','Ê','Ë', 'Ì','Í','Î','Ï', 'Ñ', 'Ò','Ó','Ô','Õ','Ö', 'Ù','Ú','Û','Ü', 'Ý'), 
		array( 'a','a','a','a','a', 'c', 'e','e','e','e', 'i','i','i','i', 'n', 'o','o','o','o','o', 'u','u','u','u', 'y','y', 'A','A','A','A','A', 'C', 'E','E','E','E', 'I','I','I','I', 'N', 'O','O','O','O','O', 'U','U','U','U', 'Y'), 
		$texto); 

    return $aa;
}


function mint_search_cpt($query){
         
	if ( $query->is_search() && $query->is_main_query() && isset($_REQUEST['type']) ) {
		 
		$query->set( 'post_type', $_REQUEST['type'] );
	}
}
add_action('pre_get_posts','mint_search_cpt');


function wpbeginner_numeric_posts_nav() {
 
    if( is_singular() )
        return;
 
    global $wp_query;
 
    /** Stop execution if there's only 1 page */
    if( $wp_query->max_num_pages <= 1 )
        return;
 
    $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
    $max   = intval( $wp_query->max_num_pages );
 
    /** Add current page to the array */
    if ( $paged >= 1 )
        $links[] = $paged;
	//CASE 01
	if ($paged == 1) {
		for ($i = 1; (($i+1) <= $max && $i <= 4); $i++ ){
			$links[] = $paged + $i;
		}
	}

	//CASE 02
	if ($paged == 2) {
		$links[] = $paged - 1;
		for ($i = 1; (($i+2) <= $max && $i <= 3); $i++ ){
			$links[] = $paged + $i;
		}
	}

    /** Add the pages around the current page to the array */
    if ( $paged >= 3) {
        $links[] = $paged - 1;
        $links[] = $paged - 2;
    } 
 
    if ( ( $paged + 2 ) <= $max && $paged > 2) {
        $links[] = $paged + 2;
        $links[] = $paged + 1;
	}
	
	//CASE MAX-1
	if ( $paged > 3 && ( $paged + 1 ) == $max) {
		$links[] = $paged - 3;
		$links[] = $paged + 1;
	}

	//CASE MAX
	if ($paged == $max) {
		if ($paged > 3)
			$links[] = $paged - 3;
		if ($paged > 4)
			$links[] = $paged - 4;
	}
 
    echo '<div id="pagination" class="navigation mt-80 mb-40">' . "\n";
 
	/*
	<div id="pagination" class="mt-80 mb-40">
		<div class="pagination-arrow -first -disabled"></div>
		<div class="pagination-arrow -prev -disabled"></div>
		<div class="numbers">
			<span class="selected">1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</div>
		<div class="pagination-arrow -next"></div>
		<div class="pagination-arrow -last"></div>
	</div>
	*/

	/** First Post Link */
	if ($paged !== 1) {
		printf( '<a href="%s"><div class="pagination-arrow -first"></div></a>' . "\n", esc_url( get_pagenum_link( 1 ) ));

	} else {
		printf( '<div class="pagination-arrow -first -disabled"></div>' . "\n");
		
	}

    /** Previous Post Link */
    if ( get_previous_posts_link() ) {
		printf( '<a href="%s"><div class="pagination-arrow -prev"></div></a>' . "\n", esc_url( get_pagenum_link( ($paged-1) ) ) );

	} else {
		printf( '<div class="pagination-arrow -prev -disabled"></div>' . "\n");
		
	}
		


	echo '<div class="numbers">';
		// /** Link to first page, plus ellipses if necessary */
		// if ( ! in_array( 1, $links ) ) {
		// 	$class = 1 == $paged ? ' class="selected"' : '';
	
		// 	printf( '<span%s><a href="%s">%s</a></span>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );
	
		// 	if ( ! in_array( 2, $links ) )
		// 		echo '<span>…</span>';
		// }
	
		
		/** Link to current page, plus 2 pages in either direction if necessary */
		sort( $links );
		foreach ( (array) $links as $link ) {
			$class = $paged == $link ? ' class="selected"' : '';
			printf( '<span%s><a href="%s">%s</a></span>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
		}
	
	echo '</div>';
 
    // /** Link to last page, plus ellipses if necessary */
	//  if ( ! in_array( $max, $links ) ) {
    //     if ( ! in_array( $max - 1, $links ) )
    //         echo '<span>…</span>' . "\n";
 
    //     $class = $paged == $max ? ' class="active"' : '';
    //     printf( '<span%s><a href="%s">%s</a></span>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );
    // }
 
    /** Next Post Link */
    if ( get_next_posts_link() ) {
		printf( '<a href="%s"><div class="pagination-arrow -next"></div></a>' . "\n", esc_url( get_pagenum_link( ($paged + 1) ) ) );
	} else {
		
		printf( '<div class="pagination-arrow -next -disabled"></div>' . "\n"  );
	}

	/** Link to last page */
	if ($paged !== $max) {
		printf( '<a href="%s"><span class="pagination-arrow -last"></span></a>' . "\n", esc_url( get_pagenum_link( $max ) ) );

	} else {
		printf( '<span class="pagination-arrow -last -disabled"></span>' . "\n" );

	}
	

	

 
    echo '</div>' . "\n";
 
}


/**
 * Filter the except length to 35 words.
 *
 * @param int $length Excerpt length.
 * @return int (Maybe) modified excerpt length.
 */
function wpdocs_custom_excerpt_length( $length ) {
    return 35;
}
add_filter( 'excerpt_length', 'wpdocs_custom_excerpt_length', 999 );

/**
 * Filter the excerpt "read more" string.
 *
 * @param string $more "Read more" excerpt string.
 * @return string (Maybe) modified "read more" excerpt string.
 */
function wpdocs_excerpt_more( $more ) {
    return '[...]';
}
add_filter( 'excerpt_more', 'wpdocs_excerpt_more' );


/* PAGINACAO PARA CPTS e POSTS */
function news_pagination($pages = '', $range = 2)
{
     $showitems = ($range);

	 $paged = get_query_var( 'paged' );
     if(empty($paged)) $paged = 1;

     if($pages == '')
     {
		 global $wp_query;
         $pages = $wp_query->max_num_pages;
         if(!$pages)
         {
             $pages = 1;
         }
     }

     if(1 != $pages)
     {
         echo "<div class='pagination'><ul>";
        //  if($paged > 2 && $paged > $range+1 && $showitems < $pages) echo "<a href='".get_pagenum_link(1)."'>&laquo; a</a>";
        //  if($paged > 1 && $showitems < $pages) echo "<li><a href='".get_pagenum_link($paged - 1)."'>&lsaquo; b</a></li>";
        //  if($paged > 1) echo "<li><a href='".get_pagenum_link($paged - 1)."'>&lt;</a></li>";

         for ($i=1; $i <= $pages; $i++)
         {
             if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
             {
                 echo ($paged == $i)? "<li class='-active'>".$i."</li>":"<li><a href='".get_pagenum_link($i)."' class='inactive' >".$i."</a></li>";
             }
         }

        //  if ($paged < $pages) echo "<li><a href='".get_pagenum_link($paged + 1)."'>&gt;</a></li>";
        //  if ($paged < $pages && $showitems < $pages) echo "<li><a href='".get_pagenum_link($paged + 1)."'>&rsaquo;</a></li>";
        //  if ($paged < $pages-1 &&  $paged+$range-1 < $pages && $showitems < $pages) echo "<a href='".get_pagenum_link($pages)."'>&raquo;</a>";
         echo "</ul></div>\n";
     }
}


// Tries to Fix JSON format and decodes it as associative array
function json_clear_decode($json){

	$json = str_replace('&quot;', '"', $json);
	$json = iconv('UTF-8', 'UTF-8//IGNORE', utf8_encode($json));

	// This will remove unwanted characters.
	// Check http://www.php.net/chr for details
	for ($i = 0; $i <= 31; ++$i) {
		$json = str_replace(chr($i), "", $json);
	}
	$json = str_replace(chr(127), "", $json);

	// This is the most common part
	// Some file begins with 'efbbbf' to mark the beginning of the file. (binary level)
	// here we detect it and we remove it, basically it's the first 3 characters
	if (0 === strpos(bin2hex($json), 'efbbbf')) {
	$json = substr($json, 3);
	}

	return json_decode($json, true);

}

//controla visualização de posts
function wpb_set_post_views($postID) {
    $count_key = 'wpb_post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}
//To keep the count accurate, lets get rid of prefetching
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);

/*Compressão de HTML*/
class WP_HTML_Compression {
    // Settings
    protected $compress_css = true;
    protected $compress_js = true;
    protected $info_comment = true;
    protected $remove_comments = true;

    // Variables
    protected $html;
    public function __construct($html)
    {
   	 if (!empty($html))
   	 {
   		 $this->parseHTML($html);
   	 }
    }
    public function __toString()
    {
   	 return $this->html;
    }
    protected function bottomComment($raw, $compressed)
    {
   	 $raw = strlen($raw);
   	 $compressed = strlen($compressed);

   	 $savings = ($raw-$compressed) / $raw * 100;

   	 $savings = round($savings, 2);

   	 return '<!--HTML compressed, size saved '.$savings.'%. From '.$raw.' bytes, now '.$compressed.' bytes-->';
    }
    protected function minifyHTML($html)
    {
   	 $pattern = '/<(?<script>script).*?<\/script\s*>|<(?<style>style).*?<\/style\s*>|<!(?<comment>--).*?-->|<(?<tag>[\/\w.:-]*)(?:".*?"|\'.*?\'|[^\'">]+)*>|(?<text>((<[^!\/\w.:-])?[^<]*)+)|/si';
   	 preg_match_all($pattern, $html, $matches, PREG_SET_ORDER);
   	 $overriding = false;
   	 $raw_tag = false;
   	 // Variable reused for output
   	 $html = '';
   	 foreach ($matches as $token)
   	 {
   		 $tag = (isset($token['tag'])) ? strtolower($token['tag']) : null;

   		 $content = $token[0];

   		 if (is_null($tag))
   		 {
   			 if ( !empty($token['script']) )
   			 {
   				 $strip = $this->compress_js;
   			 }
   			 else if ( !empty($token['style']) )
   			 {
   				 $strip = $this->compress_css;
   			 }
   			 else if ($content == '<!--wp-html-compression no compression-->')
   			 {
   				 $overriding = !$overriding;

   				 // Don't print the comment
   				 continue;
   			 }
   			 else if ($this->remove_comments)
   			 {
   				 if (!$overriding && $raw_tag != 'textarea')
   				 {
   					 // Remove any HTML comments, except MSIE conditional comments
   					 $content = preg_replace('/<!--(?!\s*(?:\[if [^\]]+]|<!|>))(?:(?!-->).)*-->/s', '', $content);
   				 }
   			 }
   		 }
   		 else
   		 {
   			 if ($tag == 'pre' || $tag == 'textarea')
   			 {
   				 $raw_tag = $tag;
   			 }
   			 else if ($tag == '/pre' || $tag == '/textarea')
   			 {
   				 $raw_tag = false;
   			 }
   			 else
   			 {
   				 if ($raw_tag || $overriding)
   				 {
   					 $strip = false;
   				 }
   				 else
   				 {
   					 $strip = true;

   					 // Remove any empty attributes, except:
   					 // action, alt, content, src
   					 $content = preg_replace('/(\s+)(\w++(?<!\baction|\balt|\bcontent|\bsrc)="")/', '$1', $content);

   					 // Remove any space before the end of self-closing XHTML tags
   					 // JavaScript excluded
   					 $content = str_replace(' />', '/>', $content);
   				 }
   			 }
   		 }

   		 if ($strip)
   		 {
   			 $content = $this->removeWhiteSpace($content);
   		 }

   		 $html .= $content;
   	 }

   	 return $html;
    }

    public function parseHTML($html)
    {
   	 $this->html = $this->minifyHTML($html);

   	 if ($this->info_comment)
   	 {
   		 $this->html .= "\n" . $this->bottomComment($html, $this->html);
   	 }
    }

    protected function removeWhiteSpace($str)
    {
   	 $str = str_replace("\t", ' ', $str);
   	 $str = str_replace("\n",  '', $str);
   	 $str = str_replace("\r",  '', $str);

   	 while (stristr($str, '  '))
   	 {
   		 $str = str_replace('  ', ' ', $str);
   	 }

   	 return $str;
    }
}

function wp_html_compression_finish($html) {
    return new WP_HTML_Compression($html);
}

function wp_html_compression_start() {
    ob_start('wp_html_compression_finish');
}
add_action('get_header', 'wp_html_compression_start');


/*
 * Manipulando valores do ACF */
function treating_acf_values($data) {
	
	// Logica de paginação
	$per_page = isset($_GET['per_page']) ? $_GET['per_page'] : -1;
	$page = isset($_GET['page']) ? $_GET['page'] : 0;
	$offset = $page * $per_page;
	
	// Logica para filtrar os anos cadastrados
	$filterYear = isset($_GET['ano']) ? $_GET['ano'] : false;

	if (isset($data) && is_array($data)):
		foreach ($data as $key => $item) {
			
			if (is_array($data[$key])):
				$data[$key] = array_filter($data[$key], function ($item) use ($filterYear) {
					if (isset($item['data'])) {

						$sub_strings = explode('/', $item['data']);
						$year        = array_pop($sub_strings);
				
						return $filterYear ? $filterYear == $year : true;
					} else {
						return true;
					}
				});

			// Logica de ordenação com paginação
			$order_by = isset($_GET['order_by']) ? $_GET['order_by'] : false;
			$order_dir = isset($_GET['order_dir']) ? $_GET['order_dir'] : 'asc';
	
			if ($order_by && count($data[$key]) > 1) :

				usort($data[$key], function($a, $b) use ($order_by, $order_dir) {

					if ($order_by === 'data' && $a['data'] !== "" && $b['data'] !== "") {
						$dateA = DateTime::createFromFormat('d/m/Y', $a['data'])->format('U');
						$dateB = DateTime::createFromFormat('d/m/Y', $b['data'])->format('U');

						if ($order_dir === 'desc') {
						return $dateB - $dateA;
						} else {
						return $dateA - $dateB;
						}
					} else {
						if ($order_dir === 'desc') {
						return $a[$order_by] > $b[$order_by];
						} else {
						return $a[$order_by] < $b[$order_by];
						}
					}
				});

				$data[$key] = array_filter(array_values($data[$key]), function($i) use ($offset, $per_page) {
					if ($per_page === -1) return true;
					return $i >= $offset && $i < $offset + $per_page;
				}, ARRAY_FILTER_USE_KEY);
	
				$data[$key] = array_values($data[$key]);
			endif;


		endif;
		}
	endif;
  	return $data; 
}

//Caso esta funcão tenha que ser reativada, é necessário 
// especializar ela, pois está afetando outras páginas/funcões

add_filter( 'acf/rest_api/page/get_fields', 'treating_acf_values');


function printCustomCategory($postid, $cat_type, $separator) {
	$term_query = wp_get_post_terms($postid, $cat_type);
	$term_list = '';
	//die(var_dump($term_query));
	if (is_array($term_query)):
		foreach ( $term_query as $term ) {
			$term_list .= '<a class="js-category_link" data-filter="'.$term->slug.'" href="/imprensa/press-release?category='.$term->slug.'">'.$term->name.'</a>'.$separator;
		 }
	endif;
	$result = substr($term_list, 0, (strlen($separator)*-1 ) );
	return $result;
}





//adiciona o post pai quando pesquisado por parent_id
add_filter( 'posts_where', function ( $where, WP_Query $q ) use ( &$wpdb )	{
	if ( true !== $q->get( 'wpse_include_parent' ) )
		return $where;

	/**
	 * Get the value passed to from the post parent and validate it
	 * post_parent only accepts an integer value, so we only need to validate
	 * the value as an integer
	 */
	$post_parent = filter_var( $q->get( 'post_parent' ), FILTER_VALIDATE_INT );
	if ( !$post_parent )
		return $where;

	/** 
	 * Lets also include the parent in our query
	 *
	 * Because we have already validated the $post_parent value, we 
	 * do not need to use the prepare() method here
	 */
	$where .= " OR $wpdb->posts.ID = $post_parent";

	return $where;
}, 10, 2 );

// Stores debug or error log
if ( ! function_exists('write_log')) {
	function write_log ( $log )  {
	   if ( is_array( $log ) || is_object( $log ) ) {
		  error_log( print_r( $log, true ) );
	   } else {
		  error_log( $log );
	   }
	}
 }
 

 /* Limits filesize uploads */


 
function w16_max_image_size( $file ) {
  $size = $file['size'];
  $size = $size / 1024;
  $type = $file['type'];
  $is_image = strpos( $type, 'image' ) !== false;
  $limit = 5000;
  $limit_output = '5mb';
  if ( $is_image && $size > $limit ) {
    $file['error'] = 'Imagens devem ser menores que ' . $limit_output . '. Utilize um compressor de imagens para reduzir seu tamanho.';
  }//end if
  return $file;
}//end nelio_max_image_size()
add_filter( 'wp_handle_upload_prefilter', 'w16_max_image_size' );


/* Excerpt crop to words based in string length */
function cropExcerpt($excerpt, $size, $supple = false, $margin = 0) {
	/* Does not word with multiline string. */
	$line=$excerpt;
	if (strlen($excerpt) > $size){
		$pos = strpos($excerpt, ' ', $size);
		if ($pos !== false) {
			$line = substr($excerpt, 0, $pos).'…';
		}
		if($supple == false && strlen($line) > ($size + $margin)) {
			$lastSpacePosition = strrpos($line, ' ');
			$line = substr($line, 0, $lastSpacePosition).'…';
		}
	}
	return $line;
}

function wp_42573_fix_template_caching( WP_Screen $current_screen ) {
	// Only flush the file cache with each request to post list table, edit post screen, or theme editor.
	if ( ! in_array( $current_screen->base, array( 'post', 'edit', 'theme-editor' ), true ) ) {
		return;
	}
	$theme = wp_get_theme();
	if ( ! $theme ) {
		return;
	}
	$cache_hash = md5( $theme->get_theme_root() . '/' . $theme->get_stylesheet() );
	$label = sanitize_key( 'files_' . $cache_hash . '-' . $theme->get( 'Version' ) );
	$transient_key = substr( $label, 0, 29 ) . md5( $label );
	delete_transient( $transient_key );
}
add_action( 'current_screen', 'wp_42573_fix_template_caching' );

//transforma notacao BR em EN para numeros
function getfloat($str) { 

	  $str = str_replace(".", "", $str); // replace dots (thousand seps) with blancs 
	  $str = str_replace(",", ".", $str); // replace ',' with '.' 

	
	if(preg_match("#([0-9\.]+)#", $str, $match)) { // search for number that may contain '.' 
	  return floatval($match[0]); 
	} else { 
	  return floatval($str); // take some last chances with floatval 
	} 
  } 