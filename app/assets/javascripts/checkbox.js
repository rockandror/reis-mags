function check_box(){
  var check = $('.checkbox-custom input');
  //Initializer
  $.each($('input:checked'),function(index, checkbox){
    $(checkbox).parent().find('.fa-check').css('visibility', 'visible');
  })

  // Watcher
  $(check).change(function() {
    var id = '#'+$(this).attr("id");
    var $this = $(id).closest('.checkbox-custom').find('.icon .fa');
    if($(this).is(":checked")) {
      $this.css('visibility','visible');
    }else{
      $this.css('visibility','hidden');
    }
  });
}
