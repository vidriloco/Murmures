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