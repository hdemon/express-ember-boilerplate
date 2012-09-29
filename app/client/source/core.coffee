jquery = ["https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"]

requirejs.config
  baseUrl: "/public/js"
  shim:
    "lib/jquery":
      exports: "jQuery"

    "lib/underscore-min":
      exports: "_"

    "lib/ember":
      deps: jquery
      exports: "Ember"

    "lib/bootstrap.min":
      deps: jquery

    "lib/jquery.lorem":
      deps: jquery
      exports: "jQuery"

    "app":
      deps: [
        "lib/ember"
        "lib/underscore-min"
      ]
      exports: "App"

files = [
  'app'

  'controllers'
  'controllers/application'
  'controllers/home'
  'controllers/items'
  'controllers/item'
  'controllers/sections'
  'controllers/events'

  'views'
  'views/application'
  'views/home'
  'views/items'
  'views/item'
  'views/sections'
  'views/events'

  'routes'

  'lib/handlebars-1.0.0.beta.6'
  'lib/bootstrap.min'
  'lib/jquery.lorem'

  'init'
]

require files
