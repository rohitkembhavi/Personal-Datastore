import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

// Connects to data-controller="custom-field-modal"
// Doubts: 
  // - what is the meaning of connect here. Does the stimulus controller connect to the DOM or something?
  // - what is this.element; 
  // - Is this `new Modal(this.element)` Javascript OOPs?

export default class extends Controller {
  connect() {
    console.log("Connected", this.element)
    this.modal = new Modal(this.element)
    this.modal.show()
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

}
