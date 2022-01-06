import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { url: String }
  static targets = ["posts", "post"]

  connect() {
    this.element.ctrl = this;
  }

  append({ detail: { html }}) {
    const fragment = document.createRange().createContextualFragment(html)
    this.postsTarget.append(fragment)
    this.element.dataset.contentLoaderUrlValue = `/posts/more.html?post_id=${this.lastPostId()}`
  }

  lastPostId() {
    return this.postTargets.pop().dataset.id
  }
}