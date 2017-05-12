var ready;
ready = function() {
  fastClick();
  detectOrientationChange();
  touchOutIpad();
  check_box_custom();
  radio_button_custom();
  slider_bootstrap();
  magnific_popup();
  tooltips();
  popover();
};


$(document).on('page:fetch', function() {
  $('.overlay-nprogress').show();
});
$(document).on('page:change', function() {
  ready();
  $('.overlay-nprogress').hide();
});
