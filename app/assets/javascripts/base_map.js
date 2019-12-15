class BaseMap {
  constructor(apiKey, containerID, opts) {
    this.apiKey = apiKey;
    this.containerID = containerID;
    this.opts = opts;
  }
  
  start() {
    mapboxgl.accessToken = this.apiKey;
    this.map = new mapboxgl.Map({
      container: this.containerID, // container id
      style: this.opts.style, //hosted style id
      center: this.opts.initialCoordinates, // starting position
      zoom: this.opts.initialZoom // starting zoom
    });
  }

  loadMarkersAt(containerID, actionOnClick) {    
    let features = this.featuresForMarkersAt(containerID);
    let bounds = features.map(function(feature) {
      return feature.coordinates;
    });
    
    var map = this.map;
    // add markers to map
    features.forEach(function(marker) {

      // create a HTML element for each feature
      var el = document.createElement('div');
      el.className = 'marker';
      el.addEventListener('click', () => 
         { 
           actionOnClick(marker.index);
         }
      ); 

      // make a marker for each feature and add to the map
      new mapboxgl.Marker(el)
        .setLngLat(marker.coordinates)
        .addTo(map);
    });
    
    this.map.fitBounds(bounds, {padding: 40 });
  }
  
  featuresForMarkersAt(containerID) {
    return $.map($(containerID), function(item) {
      var lat = $(item).data("lat");
      var lon = $(item).data("lng");
      var index = $(item).data("id");
          
      return {
        index: index,
        coordinates: [lat, lon]
      }
    });
  }
}