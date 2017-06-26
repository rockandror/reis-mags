App.TouchDevice =

  is_touch_device: ->
    console.log 'is_touch_device'
    'ontouchstart' of window or navigator.MaxTouchPoints > 0 or navigator.msMaxTouchPoints > 0

  fast_click: ->
    console.log 'fastClick'
    if is_touch_device()
      if 'addEventListener' of document
        document.addEventListener 'DOMContentLoaded', (->
          FastClick.attach document.body
          return
        ), false
    return

    touch_ipad: ->
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


  initialize: ->
    App.TouchDevice.is_touch_device()
    App.TouchDevice.fast_click()
    App.TouchDevice.touch_ipad()
    false
