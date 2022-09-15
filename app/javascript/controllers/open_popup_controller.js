import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="open-popup"
export default class extends Controller {
  static targets = ["popup"]
  connect() {
  }

  openPopup() {
    this.popupTarget.classList.add("open-popup");
  }


  closePopup() {
    this.popupTarget.classList.remove("open-popup");
  }
}
