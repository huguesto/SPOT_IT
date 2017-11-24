function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  var placeAddress = document.getElementById('user_input_autocomplete_address');
  placeAddress.blur();
  placeAddress.value = components.address;
}

function getAddressComponents(place) {
  if (window.console && typeof console.log === "function") {
    console.log(place);
  }

}

document.addEventListener("DOMContentLoaded", function() {
  var placeAddress = document.getElementById('user_input_autocomplete_address');

  if (placeAddress) {
    var autocomplete = new google.maps.places.Autocomplete(placeAddress, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(placeAddress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
