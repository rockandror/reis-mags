function carousel(){

  //carousel_thumbnail
  $('#carousel_thumbnail').carousel({
    interval: 7000
  })

  //carousel_grid_slide
  $('#carousel_grid_slide').carousel({
    //interval: 5000
  });
  $('[id^=carousel-selector-]').click(function () {
    var id_selector = $(this).attr("id");
    try {
      var id = /-(\d+)$/.exec(id_selector)[1];
      console.log(id_selector, id);
      jQuery('#carousel_grid_slide').carousel(parseInt(id));
    } catch (e) {
      console.log('Regex failed!', e);
    }
  });
  $('#carousel_grid_slide').on('slid.bs.carousel', function (e) {
    var id = $('.item.active').data('slide-number');
    $('#carousel-text').html($('#slide-content-'+id).html());
  });
}
