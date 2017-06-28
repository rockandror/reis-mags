App.ScrollNavbar =

  initialize: ->
    console.log 'Scroll navbar'
    navBarHeight = $('.navbar').outerHeight()
    if $('.navbar').hasClass('navbar-header-effect')
      $('.page').css 'margin-top', navBarHeight
    if $(window).width() >= 768
      console.log 'scroll + 768'
      $(window).scroll ->
        if $(document).scrollTop() > 50
          $('.navbar-header-effect').addClass 'shrink-navbar'
        else
          $('.navbar-header-effect').removeClass 'shrink-navbar'
