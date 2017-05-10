var ready;
ready = function() {
  fastClick();
  detectOrientationChange();
  touchOutIpad();
  check_box_custom();
  radio_button_custom();
};

$(document).on('page:fetch', function() {
  $('.overlay-nprogress').show();
});
$(document).on('page:change', function() {
  ready();
  $('.overlay-nprogress').hide();
});
