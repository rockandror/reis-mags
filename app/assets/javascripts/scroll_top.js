function scroll_top() {

  console.log("Scroll top");

  var action;
  var btnScrollTop = $('.scroll-top');

  $(window).scroll(function() {
    clearTimeout(action);
    scrollDown();
  });

  function scrollDown() {
    action = setTimeout(function() {
      if ( $(this).scrollTop() > 100 ) {
        btnScrollTop.fadeIn();
      } else {
        btnScrollTop.fadeOut();
      }
    }, 1);
  }

  btnScrollTop.each(function(){
    $(this).click(function(e){
      e.preventDefault();
      $('html,body').animate({ scrollTop: 0 }, 'slow');
    });
  });

}
