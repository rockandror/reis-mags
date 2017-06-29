App.Carousel =

  initialize: ->
    console.log 'carousel'
    $('#carousel_thumbnail').carousel interval: 7000

    $('#carousel_grid_slide').carousel {}
    $('[id^=carousel-selector-]').click ->
      id_selector = $(this).attr('id')
      try
        id = /-(\d+)$/.exec(id_selector)[1]
        console.log id_selector, id
        jQuery('#carousel_grid_slide').carousel parseInt(id)
      catch e
        console.log 'Regex failed!', e
      return
    $('#carousel_grid_slide').on 'slid.bs.carousel', (e) ->
      id = $('.item.active').data('slide-number')
      $('#carousel-text').html $('#slide-content-' + id).html()
      return
