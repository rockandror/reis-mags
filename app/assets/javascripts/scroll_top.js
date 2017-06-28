function scroll_top(){
  console.log("Scroll top");

  $(window).scroll(function(){
      if ($(this).scrollTop() > 100) {
          $('.scroll-top').fadeIn();
      } else {
          $('.scroll-top').fadeOut();
      }
  });

  $('.scroll-top').each(function(){
      $(this).click(function(){
          $('html,body').animate({ scrollTop: 0 }, 'slow');
          return false;
      });
  });
}
