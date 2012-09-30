requirejs.config
  baseUrl: "/public/js"
  dir: "/app/client/"

  shim:
    "lib/jquery-1.7.2.min":
      exports: "jQuery"

    "lib/handlebars-1.0.0.beta.6":
      exports: "Handlebars"

    "lib/ember":
      deps: [
        "lib/jquery-1.7.2.min"
        "lib/handlebars-1.0.0.beta.6"
      ]
      exports: "Ember"

    "lib/bootstrap.min":
      deps: ["lib/jquery-1.7.2.min"]

    "lib/jquery.lorem":
      deps: ["lib/jquery-1.7.2.min"]

require [
  'lib/bootstrap.min'
  'lib/jquery.lorem'

  'compiled/controllers/application'
  'compiled/controllers/home'
  'compiled/controllers/items'
  'compiled/controllers/item'
  'compiled/controllers/sections'
  'compiled/controllers/events'

  'compiled/views/application'
  'compiled/views/home'
  'compiled/views/items'
  'compiled/views/item'
  'compiled/views/sections'
  'compiled/views/events'

  'compiled/routes'

  'compiled/init'
]
