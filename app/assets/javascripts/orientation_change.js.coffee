App.OrientationChange =

  initialize: ->
    detectOrientationChange = ->
    console.log 'detectOrientationChange'
    isMobile = window.matchMedia('only screen and (max-width: 767px)')
    if isMobile.matches
      if window.matchMedia('(orientation: landscape)').matches
        $('.block-landscape').removeClass 'hidden'
      $(window).on 'orientationchange', ->
        if window.orientation == 0
          $('.block-landscape').addClass 'hidden'
        else
          $('.block-landscape').removeClass 'hidden'
        return
    return
