import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="job"
export default class extends Controller {
  static targets = ["careerTitle"];
  connect() {
    console.log("Le controller est connecté!", this.element);
  }
  selectJob() {
    console.log("Sélection du métier déclenchée !");
    console.log("Cible trouvée :", this.careerTitleTarget); // Log de la cible

    event.target.disabled = true; // Désactive le bouton

    if (!document.getElementById("selected-job")) {
      let newTextDiv = document.querySelector(".dashboard-career-header");

      newTextDiv.insertAdjacentHTML("beforeend", '<img src="/assets/psy_profiles_logo/ebeniste.png" class="dashboard-profile-logo"><span class="dashboard-profile-highlight"> Ébéniste </span>');
      /* newText.style.fontSize = "2em";
      newText.style.fontsize= 40px;// Taille exacte depuis Figma
      newText.style.fontWeight = "bold";
      newText.style.marginTop = "10px"; */

      /* newText.style.fontfamily: 'Chillax', sans-serif; // Police utilisée
      /* newText.style.fontweight: 600;                   // Semibold
      newText.style.lineheight: 140%;
      newText.style.letterspacing: 0.2px;
      newText.style.color:  #DA4167; */



    }
  }
}
