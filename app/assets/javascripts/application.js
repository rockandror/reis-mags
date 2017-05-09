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



var ready;
ready = function() {
  //fastClick();
  //alertPosition();
  //closeMenuOutside();
  //detectOrientationChange();
  //touchOutIpad();
};

$(document).on('page:fetch', function() {
  $('.overlay-nprogress').show();
});
$(document).on('page:change', function() {
  ready();
  $('.overlay-nprogress').hide();
});
