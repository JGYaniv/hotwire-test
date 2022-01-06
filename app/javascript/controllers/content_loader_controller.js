import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { url: String }

  connect() {
    this.element.ctrl = this;
  }

  load() {
    fetch(this.urlValue)
      .then(response => response.text())
      .then(html => this.dispatch("load", { detail: { html } }))
  }
}