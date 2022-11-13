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
    document.getElementById('modal').removeAttribute('src')
    document.getElementById('modal').remove();
  }

  validateFirstName() {
    console.log("Right now here in first name");
    if(this.element.value.length > 25){
      // TODO: disable next input
      document.getElementById("error-first-name").classList.add("block");
      document.getElementById("error-first-name").classList.remove("hidden");
    } else if(this.element.value.length < 25 && this.element.value.length > 3) {
      // TODO: enable next input
      document.getElementById("error-first-name").classList.remove("block");
      document.getElementById("error-first-name").classList.add("hidden");
    }
  }

  validateLastName() {
    console.log("Right now here in last name");
    if(this.element.value.length > 25){
      // TODO: disable next input
      document.getElementById("error-last-name").classList.add("block");
      document.getElementById("error-last-name").classList.remove("hidden");
    } else if(this.element.value.length < 25 && this.element.value.length > 3) {
      // TODO: enable next input
      document.getElementById("error-last-name").classList.remove("block");
      document.getElementById("error-last-name").classList.add("hidden");
    }
  }

  validateNickName(){
    // TODO: add validation and enable next input or disable if deleted
  }

  validateEmailAddress() {
    let mailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(this.element.value.match(mailFormat)){
      // TODO: enable next input
      document.getElementById("error-email-format").classList.add("hidden");
      document.getElementById("error-email-format").classList.remove("block");
    } else if(!this.element.value.match(mailFormat)){
      document.getElementById("error-email-format").classList.remove("hidden");
      document.getElementById("error-email-format").classList.add("block");
    }
  }

  validatePhoneNumber() {
    // TODO: enable next input
    if(this.element.value.length == 3){
      this.element.value = this.element.value + "-";
    } else if(this.element.value.length == 7){
      this.element.value = this.element.value+"-";
    } else if(this.element.value.length > 12){
      document.getElementById("error-phone-format").classList.remove("hidden");
      document.getElementById("error-phone-format").classList.add("block");
    } else if(this.element.value.length <= 12){
      document.getElementById("error-phone-format").classList.add("hidden");
      document.getElementById("error-phone-format").classList.remove("block");
    }
  }
}
