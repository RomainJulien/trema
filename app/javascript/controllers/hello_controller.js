import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
connect() {
console.log("✅ Stimulus fonctionne ! Hello from", this.element)
this.element.style.border = "2px dashed lime"
this.element.style.padding = "1rem"
}
}
