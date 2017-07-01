showLoadingOverlay = () ->
  console.log('Show loading overlay')
  $('.overlay-nprogress').show()

hideLoadingOverlay = () ->
  console.log('Hide Loading overlay')
  $('.overlay-nprogress').hide()


jQuery ->
  console.log('Running')
  initialize_modules()

$(document).on('page:fetch', showLoadingOverlay)
$(document).on('page:change', hideLoadingOverlay)
