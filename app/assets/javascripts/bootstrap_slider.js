function slider_bootstrap(){
  console.log('slider_bootstrap');
  //0 to 100
  $('#slide1').slider({
  	formatter: function(value) {
  		return 'Current value: ' + value;
  	}
  });

  $("#_slide_1_a").slider({
    id: "slider_slide_1_a",
    min: 0,
    max: 10,
    range: true,
    value: [3, 7]
  });

  //0 to 100
  $("#slide2").slider({

  });

  //Vertical 0 to 100
  $("#slide4").slider({
	   reversed : true
  });

}
