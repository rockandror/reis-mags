showLoadingOverlay = () ->
  console.log('Show loading overlay')
  $('.overlay-nprogress').show()

hideLoadingOverlay = () ->
  console.log('Hide Loading overlay')
  $('.overlay-nprogress').hide()


jQuery ->
  console.log('Running')
  fastClick()
  initialize_modules()
  detectOrientationChange()
  touchOutIpad()
  check_box_custom()
  radio_button_custom()
  #slider_bootstrap()
  magnific_popup()
  tooltips()
  popover()
  carousel()
  toggle_bootstrap()

$(document).on('page:fetch', showLoadingOverlay)
$(document).on('page:change', hideLoadingOverlay)
