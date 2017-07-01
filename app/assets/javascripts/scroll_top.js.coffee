App.ScrollNavbar =

  initialize: ->
    scrollDown = ->
      setTimeout (->
        if $(this).scrollTop() > 100
          btnScrollTop.fadeIn()
        else
          btnScrollTop.fadeOut()
        return
      ), 500

    console.log 'Scroll top'

    btnScrollTop = $('.scroll-top')
    $(window).scroll scrollDown
    btnScrollTop.each ->
      $(this).click (e) ->
        e.preventDefault()
        $('html,body').animate { scrollTop: 0 }, 'slow'
