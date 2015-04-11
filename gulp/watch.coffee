'use strict'
gulp = require('gulp')
paths = gulp.paths
gulp.task 'watch', [ 'inject' ], ->
  gulp.watch [
    paths.src + '/*.html'
    paths.src + '/{app,components}/**/*.scss'
    paths.src + '/{app,components}/**/*.js'
    paths.src + '/{app,components}/**/*.coffee'
    'bower.json'
  ], [ 'inject' ]
  return

