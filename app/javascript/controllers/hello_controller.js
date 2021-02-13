// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {

  value() {
    let selected = this.element.value
    let div = document.getElementById("score")
    let railsValue = div.dataset.id
    div.innerHTML = `${(selected * railsValue) + 130}`
  }

  size() {
    let selected = this.element.value
    let div = document.getElementById("size")
    div.innerHTML = selected
  }
}