NProgress.configure({
  showSpinner: true,
  ease: 'ease',
  speed: 500
});

function nprogress(){
  console.log("porogressssss");
  if($('#nprogress').lenght > 0) {
    console.log("NPROGRESSSS");
    $('#nprogress').addClass('nprogress');
  }
}

$(document).on('page:fetch',   function() {
   nprogress();
 });
