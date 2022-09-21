import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "search" ]
  connect() {
    $("#inpt_search").on('focus', function () {
      $(this).parent('label').addClass('active');
    });

    $("#inpt_search").on('blur', function () {
      if($(this).val().length == 0)
        $(this).parent('label').removeClass('active');
    });
  }
  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("navbar-lewagon-white")
    } else {
      this.element.classList.remove("navbar-lewagon-white")
    }
  }
  search () {
    this.searchTarget.classList.add('active');
  }
}
