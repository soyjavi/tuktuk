module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON "package/component.json"

    meta:
      file: "tuktuk"
      endpoint: "package",
      banner: """
        /* <%= pkg.name %> v<%= pkg.version %> - <%= grunt.template.today("m/d/yyyy") %>
           <%= pkg.homepage %>
           Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %> - Licensed <%= _.pluck(pkg.license, "type").join(", ") %> */

        """

    source:
      coffee: ["sources/tuktuk.coffee", "sources/tuktuk.*.coffee"],
      stylus: [ "sources/stylesheets/tuktuk.*.styl"],
      theme: [ "sources/themes/theme.default.styl"],
      icons: "sources/componentes/lungo.icon/lungo.icon.css"

    coffee:
      engine: files: "<%= meta.endpoint %>/<%= meta.file %>.js" : ["<%= source.coffee %>"]

    stylus:
      stylesheets:
        options: compress: true
        files: '<%= meta.endpoint %>/<%=meta.file%>.css': '<%= source.stylus %>'
      theme:
        options: compress: true
        files: '<%= meta.endpoint %>/<%=meta.file%>.theme.css': '<%= source.theme %>'

    copy:
      main:
        files:
          src: '<%= source.icons %>', dest: "<%= meta.endpoint %>/<%=meta.file%>.icons.css"

    watch:
      coffee:
        files: ["<%= source.coffee %>"]
        tasks: ["coffee"]
      stylus:
        files: ["<%= source.stylus %>", "<%= source.theme %>"]
        tasks: ["stylus"]


  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-stylus"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.registerTask "default", [ "coffee", "stylus", "copy"]
