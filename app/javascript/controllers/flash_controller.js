import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  
  static targets = [ "notice", "alert" ]

  noticeTargetConnected() {
    this.hideAfterSetTime(this.noticeTarget)
  }

  alertTargetConnected() {
    this.hideAfterSetTime(this.alertTarget)
  }

  hideAfterSetTime(element) {
    setTimeout(function() {
      element.remove()
    }, 5000);
  }


}
