module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-coffee"
  grunt.loadNpmTasks "grunt-contrib-copy"

  grunt.initConfig
    pkg: "<json:package.json>"

    concat:
      controllers:
        src: [
          "app/client/compiled/controllers/core.js"
          "app/client/compiled/controllers/*.js"
        ]
        dest: "app/client/compiled/controllers.js"
      views:
        src: [
          "app/client/compiled/views/core.js"
          "app/client/compiled/views/*.js"
        ]
        dest: "app/client/compiled/views.js"
      all:
        src: [
          "app/client/compiled/core.js"
          "app/client/compiled/routes.js"
          "app/client/compiled/controllers.js"
          "app/client/compiled/views.js"
        ]
        dest: "app/client/compiled/built.js"

    copy:
      templates:
        files: {
          "app/client/compiled/templates/": "app/client/source/templates/*"
        }

    min:
      dist:
        src: ["<banner:meta.banner>", "<config:concat.dist.dest>"]
        dest: "dist/<%= pkg.name %>.min.js"

    coffee:
      app:
        src: ["app/client/source/*.coffee"]
        dest: "app/client/compiled"
        options:
          bare: true
      controllers:
        src: ["app/client/source/controllers/*.coffee"]
        dest: "app/client/compiled/controllers"
        options:
          bare: true
      views:
        src: ["app/client/source/views/*.coffee"]
        dest: "app/client/compiled/views"
        options:
          bare: true

    watch:
      files: ["./**/*.coffee"]
      tasks: "coffee copy concat"

    build:
      tasks: "coffee copy concat"

    uglify: {}


  # Default task.
  grunt.registerTask "default", "grunt watch"