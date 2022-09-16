import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="content-swap"
export default class extends Controller {
  static targets = ["card", "card_no"];
  static values = ["order"];
  connect() {
    console.log("Connected");
  }

  next(){
    let currentCard = this.orderValue;
    console.log(this.orderValue);
    console.log("Up to here!");
    const total = this.cardTargets.length;
    if (currentCard < total) {
      this.cardTargets[currentCard + 1].classList.add("active-card");
      console.log(this.cardTarget);
    } else {

    }
  }

  back(){
    let currentCard = this.card_noTarget;
    const total = this.cardTargets.length;
    if (currentCard != 0 ) {
      this.cardTarget.classList.remove("active-card");
    }
  }
}
