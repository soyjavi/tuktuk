module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: '<json:package/component.json>',

    meta: {
        file: "tuktuk",
        banner: '/* <%= pkg.name %> v<%= pkg.version %> - <%= grunt.template.today("yyyy/m/d") %>\n' +
                '   <%= pkg.homepage %>\n' +
                '   Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %>' +
                ' - Licensed <%= _.pluck(pkg.license, "type").join(", ") %> */'
    },

    resources: {
        coffee: ['**/*.coffee'],
        stylus: ['**/*.styl'],

        stylesheets: ['stylesheets/tuktuk.*.styl'],
        themes: ['stylesheets/theme.*.styl'],
        widgets: ['widgets/**/*.styl']
    },

    stylus: {
      stylesheets: {
        options: { compress: true },
        files: { 'package/<%=meta.file%>.css': '<config:resources.stylesheets>' }
      },
      themes: {
        options: { compress: false },
        files: { 'package/*.css': '<config:resources.themes>' }
      },
      widgets: {
        options: { compress: true },
        files: { 'package/widgets/*.css': '<config:resources.widgets>' }
      }
    },

    coffee: {
      app: {
        src: ['<config:resources.coffee>'],
        dest: 'package',
        options: {
            bare: true,
            preserve_dirs: true
        }
      }
    },

    copy: {
      target: {
        // options: { cwd: 'path/to/sources' },
        files: { 'package/': ['stylesheets/theme*.styl'] }
      }
    },

    watch: {
      files: ['<config:resources.stylus>', '<config:resources.coffee>'],
      tasks: 'stylus copy coffee'
    }
  });

  grunt.loadNpmTasks('grunt-contrib-stylus');
  grunt.loadNpmTasks('grunt-coffee');
  grunt.loadNpmTasks('grunt-contrib-copy');


  // Default task.
  grunt.registerTask('default', 'stylus copy coffee');

};
