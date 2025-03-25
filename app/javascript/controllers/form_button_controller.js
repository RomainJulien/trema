import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  animateFormButton(e) {
    const button = e.target.closest("button, input[type='submit']");

    if (!button) return;

    button.classList.add("clicked", "animate");

    // Optionnel : attendre la fin de l'animation avant de soumettre le formulaire
    setTimeout(() => {
      button.closest("form").submit();
    }, 700);
  }
}
