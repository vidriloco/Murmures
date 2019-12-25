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
//= require testimonial_panel
//= require base_map
//= require map_interactor
  
let apiKey = 'pk.eyJ1Ijoidmlkcmlsb2NvIiwiYSI6ImNrMzFzYjFwbDBiZWUzZXBnaGlkMGloZHIifQ.pjMvF92qc7BlLy-6tbu62g';
let map = new BaseMap(apiKey, 'map', {
  style: 'mapbox://styles/mapbox/dark-v10',
  initialZoom: 3,
  initialCoordinates: [-77.38, 39]
});

let panel = new TestimonialPanel('#testimonials-carousel', {
  leftButtonID: "#carousel-prev-button",
  rightButtonID: "#carousel-next-button"
});

let mapInteractor = new MapInteractor(map, panel);

if($("#testimonial-list").length > 0) {
  mapInteractor.startWithMarkersAt(".coordinates");
}

