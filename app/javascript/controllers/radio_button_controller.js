import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  animateRadioButton(e) {
    const radio = e.target;
    const label = radio.closest("label");
    const radioGroup = this.element;

    if (!label || !radio) return;

    // Retire l'animation de tous les labels du groupe
    radioGroup.querySelectorAll("label").forEach(otherLabel => {
      otherLabel.classList.remove("clicked", "animate");
    });

    // Ajoute l'animation au label sélectionné
    label.classList.add("clicked", "animate");

    // Enlever les classes après l'animation
    setTimeout(() => {
      label.classList.remove("clicked", "animate");
    }, 750);
  }
}
