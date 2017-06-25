App.TouchIpad =

  initialize: ->
    console.log 'touchOutIpad'
    # Cierre del datepicker en iOS
    document.documentElement.addEventListener 'touchend', ((event) ->
      if !$(event.target).closest('.datepicker.datepicker-dropdown').length
        $('.datepicker').datepicker 'hide'
        $('.datepicker').blur()
      return
    ), false
    # Cierre del timepicker en iOS
    document.documentElement.addEventListener 'touchend', ((event) ->
      if !$(event.target).closest('.bootstrap-timepicker-widget.dropdown-menu.open').length
        $('.timepicker').timepicker 'hideWidget'
        $('.timepicker').blur()
      return
    ), false
    return
