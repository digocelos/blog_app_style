import { Controller } from "@hotwired/stimulus"

export default class extends Controller {    
    initialize() {}
    connect() {}
    toggleForm(event) {
        event.preventDefault()
        event.stopPropagation()
        const formID = event.params["form"]
        const bodyID = event.params["body"]

        const form = document.getElementById(formID)
        form.classList.toggle("d-none")
        form.classList.toggle("mt-5")

        const body = document.getElementById(bodyID)
        body.classList.toggle("d-none")
    }
}
