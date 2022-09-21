import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="content-swap"
export default class extends Controller {
  static targets = ["card", "card_no"];
  static values = {
    order: Number
  }

  connect() {
    console.log("Connected");
    this.index = 0;
    this.cardTargets[this.index].classList.add("active-card");
  }

  next(e) {
    // e.preventDefault();
    this.cardTargets[this.index].classList.remove("active-card");
    this.index = this.index + 1;
    this.cardTargets[this.index].classList.add("active-card");
    // make fetch request to update action of user lessons controller
  }

  back(e) {
    // e.preventDefault();
    this.cardTargets[this.index].classList.remove("active-card");
    this.index = this.index - 1;
    this.cardTargets[this.index].classList.add("active-card");
    // if (currentCard != 0 ) {
    //   this.cardTarget.classList.remove("active-card");
    // }
  }
}
