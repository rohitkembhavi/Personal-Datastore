import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

// Connects to data-controller="custom-field-modal"
// Doubts: 
  // - what is the meaning of connect here. Does the stimulus controller connect to the DOM or something?
  // - what is this.element; 
  // - Is this `new Modal(this.element)` Javascript OOPs?

export default class extends Controller {
  
  static targets = ['modal']
  static values = {
    modalId: String
  }
  
  connect() {
    console.log("Connected", this.element)
    this.modalOpen = false
  }

  modalTargetConnected() {
    if(!this.modalOpen && this.hasModalTarget) {
      this.bootstrapModal.show()
      this.modalOpen = true
    }
  }

  hideBeforeRender(event) {
    if(this.isOpen()) {
      event.preventDefault()
      this.element.addEventListener('hidden.bs.modal', (event) => {
        console.log("modal closed")
      })
      this.modal.hide()
    }
  }

  isOpen() {
    return this.element.classList.contains("show")
  }

  get bootstrapModal() {
    return this.getOrCreateBootstrapModal(this.modalIdValue)
  }

  getOrCreateBootstrapModal(id) {
    var bsModal = document.getElementById(`${id}`);
    return Modal.getOrCreateInstance(bsModal)
  }

}
