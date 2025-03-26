import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navigate-quizz"
export default class extends Controller {
  static targets = [ "quizz" ]
  connect() {
    console.log("Connected to navigate-quizz controller")
    console.log(this.quizzTargets)
  }
  goNext(event){
    event.target.classList.add("clicked", "animate")
    setTimeout(() => {
      this.quizzTargets.forEach((quizz) => {
        quizz.classList.add("d-none")
          console.log(event.target.closest("[data-navigate-quizz-target= 'quizz']"))
          const currentQuizz = event.target.closest("[data-navigate-quizz-target= 'quizz']")
          const nextQuizz = currentQuizz.nextElementSibling
          nextQuizz.classList.remove("d-none")})
        }, 700);
  }
}
