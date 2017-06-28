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
//= require jquery.turbolinks
//= require turbolinks
//= require turbolinks-compatibility

// ** Analytics code must be placed after turbolinks scripts
//= require analytics
//= require bootstrap-sprockets
//= require nprogress
//= require nprogress-turbolinks
//= require nprogress-ajax
//= require app
//= require nprogress_config
//= require touch_device
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-timepicker
//= require bootstrap-select
//= require bootstrap-slider
//= require bootstrap-toggle
//= require jquery.minicolors
//= require magnific-popup
//= require layout
//= require selectpicker
//= require datapicker
//= require timepicker
//= require mini_colors
//= require checkbox
//= require radiobutton
//= require bootstrap_slider
//= require bootstrap_toggle
//= require magnific_popup
//= require tooltips
//= require popover
//= require carousel
//= require cookies_eu


var initialize_modules = function() {
  console.log("initialize_modules");
  App.Nprogress.initialize();
  App.TouchDevice.initialize();
  App.SliderBootstrap.initialize();
  App.magnificPopup.initialize();
  App.PopOver.initialize();
  App.RadioButton.initialize();
  App.CheckBox.initialize();
  App.SelectPicker.initialize();
  App.TimePicker.initialize();
  App.ToolTips.initialize();
  App.DataPicker.initialize();
  App.MiniColors.initialize();
  App.Carousel.initialize();
}
