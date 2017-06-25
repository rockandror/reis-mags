App.SliderBootstrap =

  initialize: ->
    $('#slide1').slider formatter: (value) ->
      'Current value: ' + value

    $('#_slide_1_a').slider
      id: 'slider_slide_1_a'
      min: 0
      max: 10
      range: true
      value: [
        3
        7
      ]

    $('#slide2').slider {}
    $('#slide4').slider reversed: true
