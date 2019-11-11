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


});