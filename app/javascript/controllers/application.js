import { Application } from "@hotwired/stimulus"

const application = Application.start()

import Autosave from "stimulus-rails-autosave"
application.register('autosave', Autosave)

// Configure Stimulus development experience
application.debug = true
window.Stimulus   = application

export { application }
