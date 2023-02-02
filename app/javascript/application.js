// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
window.bootstrap = bootstrap


import {TabulatorFull as Tabulator} from 'tabulator-tables';
window.Tabulator = Tabulator;

import "./add_jquery.js"
