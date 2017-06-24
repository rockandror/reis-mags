function scroll_navbar(){

  var navBarHeight = $('.navbar').outerHeight();

  if($('.navbar').hasClass('navbar-header-effect')){
    $('.page').css('margin-top', navBarHeight);
  }

  if($(window).width() >= 768){
    console.log("scroll + 768");
    $(window).scroll(function() {
      if ($(document).scrollTop() > 50) {
        $('.navbar-header-effect').addClass('shrink-navbar');
      } else {
        $('.navbar-header-effect').removeClass('shrink-navbar');
      }
    });
  }
}
