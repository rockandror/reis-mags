$(function() {
  $.minicolors.defaults = $.extend($.minicolors.defaults, {
    changeDelay: 200,
    letterCase: 'uppercase',
    theme: 'bootstrap'
  });
  $('.minicolors').minicolors();
});
