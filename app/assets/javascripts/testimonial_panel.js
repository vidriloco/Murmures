class TestimonialPanel {
    
  constructor(containerID, opts={}) {
    this.containerID = containerID;
    this.leftButtonID = opts.leftButtonID;
    this.rightButtonID = opts.rightButtonID;
  }
  
  showSlideForMarkerWithIndex(index) {
    $(this.containerID).carousel(index);
  }
  
  setInteractorDelegate(interactor) {
    this.interactor = interactor;
    this.configureControls();
  }
  
  configureControls() {
    let containerID = this.containerID;
    let interactor = this.interactor;
    
    $(this.leftButtonID).bind("click", function() {
      $(containerID).carousel('prev');
      $(containerID).on('slid.bs.carousel', function () {
        let index = $(containerID + " .active .coordinates").data("id");
        interactor.focusAtItemWithIndex(index);
      });
    });
    
    $(this.rightButtonID).bind("click", function() {
      $(containerID).carousel('next');
      $(containerID).on('slid.bs.carousel', function () {
        let index = $(containerID + " .active .coordinates").data("id");
        interactor.focusAtItemWithIndex(index);
      });
    });
  }
}