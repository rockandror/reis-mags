App.RadioButton =

  initialize: ->
    console.log 'radio_button_custom'
    radioCheck = $('.radiobutton-custom .form-group .radio-inline input')
    #Initializer
    $.each $('input[type="radio"]:checked'), ->
      $(this).parent().addClass 'radio-check'

    # Watcher
    $(radioCheck).change ->
      $(radioCheck).closest('label').removeClass 'radio-check'
      if $(this).is(':checked')
        $(this).parent().addClass 'radio-check'
      else
        $(this).parent().removeClass 'radio-check'
