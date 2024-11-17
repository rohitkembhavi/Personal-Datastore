import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profiles"
export default class extends Controller {
  connect() {
    console.log("connected")
  }

  test() {
  }
}
