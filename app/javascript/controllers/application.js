import { Application } from "@hotwired/stimulus"
import RelativeDateController from './relative_date_controller'

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

Stimulus.register('relative_date', RelativeDateController)

export { application }
