function scroll_top(){
  console.log("Scroll top");
  $('#scroll-top').each(function(){
      $(this).click(function(){
          $('html,body').animate({ scrollTop: 0 }, 'slow');
          return false;
      });
  });
}
