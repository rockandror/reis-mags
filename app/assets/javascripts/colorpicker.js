$(function() {
  console.log('colorpicker');
  $.minicolors.defaults = $.extend($.minicolors.defaults, {
    theme: 'bootstrap'
  });
  $('.minicolors').minicolors();
});
