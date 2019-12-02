$(document).ready(function () {

  $(function() {                   
    $(".open-menu").click(function() { 
      $('.menu').toggleClass("-open"); 
      $(this).hide();      
      $('.mobile-buy').hide();      
    });
  });

  $(function() {                   
    $(".close-menu").click(function() { 
      $('.menu').toggleClass("-open");
      $('.open-menu').show(); 
      $('.mobile-buy').show();          
    });
  });

    //Código exclusivo da Home
    if ($('body').hasClass('page-template-home')) {
        var swiper = new Swiper('.swiper-container', {
            navigation: {
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            },
          });
    }

    //Código exclusivo da Home
    if ($('body').hasClass('single-produto')) {
      var swiper = new Swiper('.swiper-container', {
          slidesPerView: 3,
          spaceBetween: 30,
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
        });
  }

});