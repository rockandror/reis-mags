App.MiniColors =

  initialize: ->
    $.minicolors.defaults = $.extend($.minicolors.defaults, theme: 'bootstrap')
    $('.minicolors').minicolors()
