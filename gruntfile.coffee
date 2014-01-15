module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON "site/package/component.json"

    meta:
      file: "tuktuk"
      endpoint: "site/package",
      banner: """
        /* <%= pkg.name %> v<%= pkg.version %> - <%= grunt.template.today("m/d/yyyy") %>
           <%= pkg.homepage %>
           Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %> - Licensed <%= _.pluck(pkg.license, "type").join(", ") %> */

        """

    source:
      coffee: [
        "sources/tuktuk.coffee",
        "sources/tuktuk.*.coffee"],
      stylus: [
        "sources/stylesheets/tuktuk.*.styl"],
      theme_default: [
        "sources/themes/default/tuktuk.default.*.styl"],
      theme_mock: [
        "sources/themes/mock/tuktuk.mock.styl"
        "sources/themes/mock/tuktuk.mock.*.styl"],
      icons: [
        "sources/componentes/lungo.icon/lungo.icon.css"]

    coffee:
      build:
        files:
          "<%= meta.endpoint %>/<%= meta.file %>.js" : ["<%= source.coffee %>"]

    stylus:
      engine:
        options: compress: true, import: [ "__constants"]
        files: "<%= meta.endpoint %>/<%=meta.file%>.css": "<%= source.stylus %>"
      theme_default:
        options: compress: true, import: [ "__constants"]
        files: "<%= meta.endpoint %>/<%=meta.file%>.theme.default.css": "<%= source.theme_default %>"
      theme_mock:
        options: compress: true, import: [ "__constants"]
        files: "<%= meta.endpoint %>/<%=meta.file%>.theme.mock.css": "<%= source.theme_mock %>"

    copy:
      main:
        files:
          src: "<%= source.icons %>",
          dest: "<%= meta.endpoint %>/<%=meta.file%>.icons.css"

    watch:
      coffee:
        files: ["<%= source.coffee %>"]
        tasks: ["coffee"]
      stylus:
        files: ["<%= source.stylus %>"]
        tasks: ["stylus:engine"]
      theme_default:
        files: ["<%= source.theme_default %>"]
        tasks: ["stylus:theme_default"]
      theme_mock:
        files: ["<%= source.theme_mock %>"]
        tasks: ["stylus:theme_mock"]

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-stylus"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-copy"


  grunt.registerTask "default", [ "coffee", "stylus", "copy"]
