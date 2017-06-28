App.TouchDevice =

  is_touch_device: ->
    touchDevise = 'ontouchstart' of window or navigator.MaxTouchPoints > 0 or navigator.msMaxTouchPoints > 0

    if touchDevise == true
      console.log 'Touch Device'
      App.TouchDevice.fast_click()
      App.TouchDevice.doOnOrientationChange();
      App.TouchDevice.touch_ipad()

  fast_click: ->
    console.log 'fastClick'
    if 'addEventListener' of document
      document.addEventListener 'DOMContentLoaded', (->
        FastClick.attach document.body
        return
      ), false

  doOnOrientationChange: ->
    console.log 'Do orientation change'
    isMobile = window.matchMedia('only screen and (max-width: 767px)')

    if isMobile.matches
      console.log 'max 767 orientation change'
      if window.matchMedia('(orientation: landscape)').matches
        console.log 'Landscape < 767'
        $('.block-landscape').removeClass 'hidden'
      else
        console.log 'Portrait < 767'
        $('.block-landscape').addClass 'hidden'

    window.addEventListener 'orientationchange', (->
      App.TouchDevice.doOnOrientationChange();
      return
    ), false

  touch_ipad: ->
    console.log 'touchOutIpad'
    #Cierre del datepicker en iOS
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
