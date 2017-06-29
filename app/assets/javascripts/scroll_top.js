function scroll_top() {

  console.log("Scroll top");

  var setTimeOut;
  var btnScrollTop = $('.scroll-top');

  $(window).scroll(function() {
    clearTimeout(setTimeOut);
    scrollDown();
  });

  function scrollDown() {
    setTimeOut = setTimeout(function() {
      if ( $(this).scrollTop() > 100 ) {
        btnScrollTop.fadeIn();
      } else {
        btnScrollTop.fadeOut();
      }
    }, 0.5);
  }

  btnScrollTop.each(function(){
    $(this).click(function(e){
      e.preventDefault();
      $('html,body').animate({ scrollTop: 0 }, 'slow');
    });
  });

}
