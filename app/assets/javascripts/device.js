
function is_touch_device() {
 return (('ontouchstart' in window)
      || (navigator.MaxTouchPoints > 0)
      || (navigator.msMaxTouchPoints > 0));
}

function fastClick() {
  if (is_touch_device()){
    if ('addEventListener' in document) {
      document.addEventListener('DOMContentLoaded', function() {
        FastClick.attach(document.body);
      }, false);
    }
  }
}

function detectOrientationChange(){
  var isMobile = window.matchMedia("only screen and (max-width: 767px)");
  if (isMobile.matches) {
    if (window.matchMedia("(orientation: landscape)").matches) {
      $('.block-landscape').removeClass('hidden');
    }
    $(window).on("orientationchange",function(){
      if(window.orientation == 0){
        $('.block-landscape').addClass('hidden');
      }
      else{
        $('.block-landscape').removeClass('hidden');
      }
    });
  }
}

function touchOutIpad(){
  // Cierre del datepicker en iOS
  document.documentElement.addEventListener("touchend", function(event){
    if(!$(event.target).closest('.datepicker.datepicker-dropdown').length){
      $('.datepicker').datepicker('hide');
      $('.datepicker').blur();
    }
  }, false);
  // Cierre del timepicker en iOS
  document.documentElement.addEventListener("touchend", function(event){
    if(!$(event.target).closest('.bootstrap-timepicker-widget.dropdown-menu.open').length){
      $('.timepicker').timepicker('hideWidget');
      $('.timepicker').blur();
    }
  }, false);
}
