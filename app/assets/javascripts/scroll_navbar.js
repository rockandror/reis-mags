function scroll_navbar(){
  if($(window).width() >= 768){
    console.log("scroll + 768");
    $(window).scroll(function() {
      if ($(document).scrollTop() > 50) {
        $('.navbar-fixed-top').addClass('shrink-navbar');
      } else {
        $('.navbar-fixed-top').removeClass('shrink-navbar');
      }
    });
  }
}
