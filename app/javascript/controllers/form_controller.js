import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  connect() {
    console.log("Connected Here");
  }

  disconnect() {
    console.log("Got Disconnected");
  }

  hideModal() {
    console.log("close this shit");
    this.element.parentElement.removeAttribute("src");
    document.getElementById('modal').remove();
  }
}
