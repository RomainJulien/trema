import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bubbly-button"
export default class extends Controller {
  connect() {
    console.log("premiercoucou")
  }

  animateButton(e) {
    console.log("coucouapres")
    e.preventDefault;
    //reset animation
    e.target.classList.remove('animate');

    e.target.classList.add('animate');
    setTimeout(function(){
      e.target.classList.remove('animate');
    },700);
  }
}
