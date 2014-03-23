module.exports = (grunt) ->
  grunt.initConfig
    connect:
      app:
        options:
          port: 6014
          base: "."
          open: "http://localhost:6014"

    watch:
      options:
        livereload: true

    csso:
      dist:
        files:
          "MasaakiMorishita.min.css": ["MasaakiMorishita.css"]

  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-csso"

  grunt.registerTask "default", ["connect:app", "watch"]
