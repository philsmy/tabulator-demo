// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
window.bootstrap = bootstrap

import "./add_jquery.js"
import "./datatables.js"
// import "bootstrap-select"