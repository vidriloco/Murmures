class TestimonialPanel {
  constructor(containerID) {
    this.containerID = containerID;
  }
  
  focusOnMarkerWithIndex(index) {
    $(this.identifier).carousel(index);
  }
}