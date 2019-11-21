$(document).ready(function () {

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