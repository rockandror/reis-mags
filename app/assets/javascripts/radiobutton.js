function radio_button_custom(){

  var radioCheck = $('.radiobutton-custom .form-group .radio-inline input');
  //Initializer
  $.each($('input[type="radio"]:checked'),function(){
    $(this).parent().addClass("radio-check");
  })

  // Watcher
  $(radioCheck).change(function() {
    $(radioCheck).closest('label').removeClass("radio-check");
    if($(this).is(":checked")) {
      $(this).parent().addClass("radio-check");
    }else{
      $(this).parent().removeClass("radio-check");
    }
  });
}
