bourbon = require "node-bourbon"

module.exports = config:
  conventions:
    vendor: /(^bower_components|node_modules|vendor|elm)[\\/]/

  paths:
    watched: ["app", "test", "vendor", "elm"]

  files:
    javascripts: 
      joinTo: "app.js"
      # dependOn:
      #   "elm/App.elm": 
      #     - "elm/**/*.elm"
    stylesheets: joinTo: "app.css"

  plugins:
    elmCompiler:
      sourceDirectory: "elm"
      roots: [ "App.elm" ]

    sass:
      options:
        includePaths: bourbon.includePaths
