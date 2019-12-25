class MapInteractor {
  constructor(map, panel) {
    this.map = map;
    this.panel = panel;
    this.panel.setInteractorDelegate(this);
  }
  
  startWithMarkersAt(domElement) {
    let mapInteractor = this;
    this.map.start();
    this.map.loadMarkersAt(domElement, (marker) => { 
      mapInteractor.focusAt(marker);
    });
  }
  
  focusAtItemWithIndex(index) {
    let marker = this.map.getMarkerWithIndex(index);
    this.focusAt(marker);
  }
  
  focusAt(marker) {
    this.panel.showSlideForMarkerWithIndex(marker.index);
    this.map.centerMapAt(marker.coordinates);
  }
}