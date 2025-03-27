import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="job"
export default class extends Controller {
  static targets = ["careerTitle"]

  connect() {
    console.log("Le controller est connecté!", this.element)
  }

  selectJob(event) {
    console.log("Sélection du métier déclenchée !")
    console.log("Cible trouvée :", this.careerTitleTarget)

    event.target.disabled = true

    if (!document.getElementById("selected-job")) {
      const header = document.querySelector(".dashboard-career-header")
      const imagePath = header.dataset.image

      const newHTML = `
        <img src="${imagePath}" class="dashboard-profile-logo">
        <span class="dashboard-profile-highlight" id="selected-job">Ébéniste</span>
      `

      header.insertAdjacentHTML("beforeend", newHTML)
    }
  }
}
