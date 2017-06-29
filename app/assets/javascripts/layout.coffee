showLoadingOverlay = () ->
  console.log('Show loading overlay')
  $('.overlay-nprogress').show()

hideLoadingOverlay = () ->
  console.log('Hide Loading overlay')
  $('.overlay-nprogress').hide()


jQuery ->
  console.log('Running')
<<<<<<< HEAD
  initialize_modules()
=======
  fastClick()
  detectOrientationChange()
  touchOutIpad()
  check_box_custom()
  radio_button_custom()
  slider_bootstrap()
  magnific_popup()
  tooltips()
  popover()
  carousel()
  scroll_top()
  toggle_bootstrap()
  scroll_navbar()
>>>>>>> d54ca0ce492f267ddc24df0ae4e020339416146c

$(document).on('page:fetch', showLoadingOverlay)
$(document).on('page:change', hideLoadingOverlay)
