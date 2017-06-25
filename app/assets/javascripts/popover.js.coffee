App.PopOver =

  initialize: ->
    console.log 'popover'
    $('[data-toggle="popover"]').popover()
    return
