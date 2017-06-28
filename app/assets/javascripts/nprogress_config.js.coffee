App.Nprogress =

  initialize: ->
    console.log 'nprogress'
    NProgress.configure
      showSpinner: true
      ease: 'ease'
      speed: 500
