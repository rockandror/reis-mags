// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require nprogress
//= require nprogress-turbolinks
//= require nprogress-ajax
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-timepicker
//= require bootstrap-select
//= require jquery.minicolors
//= require cookies_eu
//= require jquery.turbolinks
//= require turbolinks
//= require turbolinks-compatibility

// ** Analytics code must be placed after turbolinks scripts
//= require analytics

$(function() {

  $('.datepicker').datepicker({
    format: "dd/mm/yyyy",
    autoclose: true
  })

  $( ".timepicker" ).timepicker({
    showMeridian: false,
    autoclose: true,
    disableFocus: true
  });

  $('.selectpicker').selectpicker ();
  $('.minicolors').minicolors()

});

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


var ready;
ready = function() {
  fastClick();
  detectOrientationChange();
  touchOutIpad();
};

$(document).on('page:fetch', function() {
  $('.overlay-nprogress').show();
});
$(document).on('page:change', function() {
  ready();
  $('.overlay-nprogress').hide();
});
