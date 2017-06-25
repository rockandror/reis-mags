App.TouchDevice =

  initialize: ->
    is_touch_device = ->
      console.log 'is_touch_device'
      'ontouchstart' of window or navigator.MaxTouchPoints > 0 or navigator.msMaxTouchPoints > 0
