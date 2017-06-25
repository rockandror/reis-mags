App.CheckBox =

  initialize: ->
    console.log 'check_box_custom'
    check = $('.checkbox-custom input')
    #Initializer
    $.each $('input:checked'), (index, checkbox) ->
      $(checkbox).parent().find('.fa-check').css 'visibility', 'visible'
      return
    # Watcher
    $(check).change ->
      id = '#' + $(this).attr('id')
      $this = $(id).closest('.checkbox-custom').find('.icon .fa')
      if $(this).is(':checked')
        $this.css 'visibility', 'visible'
      else
        $this.css 'visibility', 'hidden'
      return
