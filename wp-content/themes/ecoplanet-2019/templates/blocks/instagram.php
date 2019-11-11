<?php

include get_template_directory() . '/app/vendor/autoload.php';



function get_insta_cards() {
    // if (!get_field('key_instagram','options')) {
    //   echo "pliu";
    //     return;
    // }
  $client = new \GuzzleHttp\Client();
  $token = get_field('key_instagram','options');
  if (!$token) {

    $token = '1529286140.24cc0ed.c802550c33984b8cac5fe7369713ecda';
  }
  $parts = explode('.', $token);
  if (!is_array($parts) || count($parts) < 3) {
    return [];
  }
  $idClient = $parts[0];
  $accessToken = $parts[1].".".$parts[2];

   try {
    $res = $client->request('GET', "http://api.instagram.com/v1/users/".$idClient."/media/recent/?access_token=".$token);
    if($res->getStatusCode() == 200){
      $posts = json_decode($res->getBody(), true)['data'];
      // var_dump($posts);
      $posts = array_map('insta_card', $posts);
      // $posts = array_filter($posts, function($i) { return ($i < 4); }, ARRAY_FILTER_USE_KEY);

      return $posts;
    }
  } catch (Exception $e) {
    return [];
  }
  return [];
}

function insta_card($post) {
  $dateTime = $post['created_time'];
  $thumbImg = $post['images']['low_resolution']['url'];

  $newDate = date('m/d/Y', $dateTime);

  $timeAgo = new Westsworld\TimeAgo('America/Sao_Paulo', 'pt-BR');
  $dateTimeInWords = $timeAgo->inWords($newDate); 
  // var_dump($post);
  return ['link' => $post['link'],'thumbImg'=> $thumbImg, 'dateTime'=>$dateTime, 'type' => 'instagram', 'html' =>
    '<img title="'.$post['caption']['text'].'" src="'.$thumbImg.'"/>'];  
}



