import { Controller } from '@hotwired/stimulus'

const format = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' }

export default class extends Controller {
  static targets = ['date']
  

  connect() {
    this.dateTargets.forEach((dateTarget) => {
      const date = new Date(dateTarget.innerHTML).toLocaleString(format)
      dateTarget.innerHTML = date
    })
  }
}

