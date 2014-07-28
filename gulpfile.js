"use strict"

// -- DEPENDENCIES -------------------------------------------------------------
var gulp    = require('gulp');
var coffee  = require('gulp-coffee');
var concat  = require('gulp-concat');
var connect = require('gulp-connect');
var header  = require('gulp-header');
var uglify  = require('gulp-uglify');
var gutil   = require('gulp-util');
var stylus  = require('gulp-stylus');
var yml     = require('gulp-yml');
var pkg     = require('./package.json');

// -- FILES --------------------------------------------------------------------
var path = {
  build : './site/package',
  js    : ['atoms.build/atoms.js', 'atoms.build/extension.*.js'],
  css   : ['atoms.build/atoms.css','atoms.build/extension.*.css']};

var source = {
  coffee: [ 'sources/tuktuk.coffee',
            'sources/tuktuk.*.coffee'],
  styl  : [ 'sources/stylesheets/__constants.styl',
            'sources/stylesheets/tuktuk.*.styl'],
  theme : [ 'sources/themes/default/__constants.styl',
            'sources/themes/default/tuktuk.default.styl',
            'sources/themes/default/tuktuk.default.*.styl'],
  icons  :[ 'sources/componentes/lungo.icon/lungo.icon.css']};

var banner = ['/**',
  ' * <%= pkg.name %> - <%= pkg.description %>',
  ' * @version v<%= pkg.version %>',
  ' * @link    <%= pkg.homepage %>',
  ' * @author  <%= pkg.author.name %> (<%= pkg.author.site %>)',
  ' * @license <%= pkg.license %>',
  ' */',
  ''].join('\n');

// -- TASKS --------------------------------------------------------------------
gulp.task('coffee', function() {
  gulp.src(source.coffee)
    .pipe(concat('tuktuk.coffee'))
    .pipe(coffee().on('error', gutil.log))
    .pipe(uglify({mangle: false}))
    .pipe(header(banner, {pkg: pkg}))
    .pipe(gulp.dest(path.build))
    .pipe(connect.reload());
});

gulp.task('styl', function() {
  gulp.src(source.styl)
    .pipe(concat('tuktuk.styl'))
    .pipe(stylus({compress: true, errors: true}))
    .pipe(header(banner, {pkg: pkg}))
    .pipe(gulp.dest(path.build))
    .pipe(connect.reload());
});

gulp.task('theme', function() {
  gulp.src(source.styl)
    .pipe(concat('tuktuk.theme.default.styl'))
    .pipe(stylus({compress: true, errors: true}))
    .pipe(header(banner, {pkg: pkg}))
    .pipe(gulp.dest(path.build))
    .pipe(connect.reload());
});

gulp.task('webserver', function() {
  connect.server({ port: 8000, root: 'www/', livereload: true });
});

gulp.task('init', function() {
  gulp.run(['coffee', 'styl', 'theme'])
});

gulp.task('default', function() {
  gulp.run(['webserver'])
  gulp.watch(source.coffee, ['coffee']);
  gulp.watch(source.styl, ['styl']);
  gulp.watch(source.theme, ['theme']);
});
