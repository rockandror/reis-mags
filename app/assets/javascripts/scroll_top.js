function scroll_top() {

  console.log("Scroll top");
  var btnScrollTop = $('.scroll-top');

  $(window).scroll(scrollDown) ;

  function scrollDown() {
    setTimeout(function() {
      if ( $(this).scrollTop() > 100 ) {
        btnScrollTop.fadeIn();
      } else {
        btnScrollTop.fadeOut();
      }
    }, 500);
  }

  btnScrollTop.each(function(){
    $(this).click(function(e){
      e.preventDefault();
      $('html,body').animate({ scrollTop: 0 }, 'slow');
    });
  });

}
