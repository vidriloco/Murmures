// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require social-share-button

mapboxgl.accessToken = 'pk.eyJ1Ijoidmlkcmlsb2NvIiwiYSI6ImNrMzFzYjFwbDBiZWUzZXBnaGlkMGloZHIifQ.pjMvF92qc7BlLy-6tbu62g';
var map = new mapboxgl.Map({
  container: 'map', // container id
  style: 'mapbox://styles/mapbox/dark-v10', //hosted style id
  center: [-77.38, 39], // starting position
  zoom: 3 // starting zoom
});

if($("#testimonial-list").length > 0) {
  var testimonialCoordinates = $(".coordinates");
  
  let bounds = [];
  let features = $.map(testimonialCoordinates, function(item) {
    var lat = $(item).data("lat");
    var lon = $(item).data("lng");
    var id = $(item).data("id");
    
    bounds.push([lat, lon]);
    
    return {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [lat, lon]
      },
      properties: {
        title: 'Mapbox',
        description: 'San Francisco, California'
      }
    }
  });
    
  // add markers to map
  features.forEach(function(marker) {

    // create a HTML element for each feature
    var el = document.createElement('div');
    el.className = 'marker';

    // make a marker for each feature and add to the map
    new mapboxgl.Marker(el)
      .setLngLat(marker.geometry.coordinates)
      .addTo(map);
  });
  
  map.fitBounds(bounds, {padding: 40 });
}


