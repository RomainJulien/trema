import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="logosize"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);

    // Sélection des éléments logos
    const tremaLogo = document.querySelector('.trema-logo');
    const companyLogo = document.querySelector('.company-logo');

    // Fonction pour ajuster la taille des logos au défilement
    const adjustLogoSizeOnScroll = () => {
      const scrollPosition = window.scrollY; // Position de défilement verticale
      let newSize = Math.max(50, 100 - scrollPosition / 5); // Réduit la taille avec un minimum de 50px

      // Applique la nouvelle taille au tremaLogo
      if (tremaLogo) tremaLogo.style.width = newSize + "px";

      // Applique la taille du companyLogo à la moitié de tremaLogo
      if (companyLogo && tremaLogo) {
        const companySize = newSize / 2; // companyLogo est 2x plus petit que tremaLogo
        companyLogo.style.width = companySize + "px";
      }
    };

    // Ajout d'un écouteur d'événement pour le scroll
    window.addEventListener('scroll', adjustLogoSizeOnScroll);
  }

  // Optionnel : nettoyer l'écouteur d'événements si nécessaire (lors de la déconnexion)
  disconnect() {
    window.removeEventListener('scroll', this.adjustLogoSizeOnScroll);
  }
}
