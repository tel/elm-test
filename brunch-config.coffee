bourbon = require "node-bourbon"

module.exports = config:
  files:
    javascripts: joinTo: "runtime.js"
    stylesheets: joinTo: "app.css"

  plugins:
    elmBrunch:
      mainModules: ["app/App.elm"]
      outputFolder: "public/"

    sass:
      options:
        includePaths: bourbon.includePaths
