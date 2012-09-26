module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-coffee"
  
  # Project configuration.
  grunt.initConfig
    pkg: "<json:package.json>"
    files: ["app/client/**/*.coffee"]
    concat:
      dist:
        src: ["<banner:meta.banner>", "<file_strip_banner:lib/<%= pkg.name %>.js>"]
        dest: "dist/<%= pkg.name %>.js"

    min:
      dist:
        src: ["<banner:meta.banner>", "<config:concat.dist.dest>"]
        dest: "dist/<%= pkg.name %>.min.js"

    coffee:
      app:
        src: "app/client/source/*.coffee"
        dest: "app/client/compiled"
        options:
          bare: true
      controllers:
        src: "app/client/source/controllers/*.coffee"
        dest: "app/client/compiled/controllers"
        options:
          bare: true
      views:
        src: "app/client/source/views/*.coffee"
        dest: "app/client/compiled/views"
        options:
          bare: true

    watch:
      files: "<config:files>"
      tasks: "coffee"

    uglify: {}

  
  # Default task.
  grunt.registerTask "default", "lint qunit concat min"