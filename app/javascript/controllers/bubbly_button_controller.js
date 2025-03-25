import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="bubbly-button"
export default class extends Controller {
  animateButton(e) {
    e.preventDefault(); // Empêche la navigation immédiate

    const button = e.target.closest("a"); // Trouve le lien cliqué

    if (!button) return; // Sécurité : si ce n'est pas un lien, on quitte

    button.classList.add("clicked", "animate"); // Ajoute l'animation

    const href = button.getAttribute("href"); // Récupère le lien

    if (href) {
      setTimeout(() => {
        window.location.href = href; // Change la page après 700ms
      }, 700);
    }
  }
}
