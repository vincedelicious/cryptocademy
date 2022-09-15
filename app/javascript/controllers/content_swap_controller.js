import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="content-swap"
export default class extends Controller {
  static targets = ["card", "card_no"];

  connect() {
    console.log("Connected");
  }

  next(){
    console.log(this.orderValue);

    this.cardTarget.classList.add("active-card");
  }

  back(){

  }
}
