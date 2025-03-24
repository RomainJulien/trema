import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="logosize"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
      // Sélection des éléments
      const tremaLogo = document.querySelector('.trema-logo');
      const companyLogo = document.querySelector('.company-logo');

      // Fonction pour ajuster la taille des logos au défilement
      function adjustLogoSizeOnScroll() {
        let scrollPosition = window.scrollY; // Position de défilement verticale
        let newSize = Math.max(50, 100 - scrollPosition / 5); // Réduit la taille avec un minimum de 50px

        // Applique la nouvelle taille des logos
        if (tremaLogo) tremaLogo.style.width = newSize + "px";
        if (companyLogo) companyLogo.style.width = newSize + "px";
      }

      // Ajout d'un écouteur d'événement sur le défilement
      window.addEventListener('scroll', adjustLogoSizeOnScroll);
  }
}
