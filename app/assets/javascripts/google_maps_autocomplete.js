$(document).ready(function() {
  var boat_address = $('#boat_address').get(0);

  if (boat_address) {
    var autocomplete = new google.maps.places.Autocomplete(boat_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(boat_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();

  // console.log(place);  // Uncomment this line to view the full object returned by Google API.

  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {  // Some types are ["country", "political"]
      var type_element = document.getElementById(component.types[j]);
      if (type_element) {
        type_element.value = component.long_name;
      }
    }
  }
}


$(document).ready(function(){
  $('#datepicker').datepicker({
      format: "dd/mm/yyyy",
      startDate: "today",
      language: "fr",
      autoclose: true,
      todayHighlight: true
  });
});
