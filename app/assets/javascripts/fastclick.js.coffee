App.FastClick =

  initialize: ->
    console.log 'fastClick'
    if is_touch_device()
      if 'addEventListener' of document
        document.addEventListener 'DOMContentLoaded', (->
          FastClick.attach document.body
          return
        ), false
    return
