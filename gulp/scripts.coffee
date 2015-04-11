'use strict'

gulp = require('gulp')

paths = gulp.paths

$ = require('gulp-load-plugins')()

gulp.task 'scripts', ->
  gulp.src(["#{paths.src}/{app,components}/**/*.coffee"])
  .pipe($.coffeelint())
  .pipe($.coffeelint.reporter())
  .pipe($.coffee())
  .on('error', (err) ->
    console.error err.toString()
    @emit 'end'
    return
  )
  .pipe(gulp.dest(paths.tmp + '/serve/'))
  .pipe($.size())
