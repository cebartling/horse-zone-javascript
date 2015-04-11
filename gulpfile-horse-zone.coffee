'use strict'

gulp = require('gulp')
gulp.paths = {
  src: 'src'
  spec: 'spec'
  dist: 'dist'
  tmp: '.tmp'
  e2e: 'e2e'
}

require('gulp-task-list')(gulp)

require('require-dir')('./gulp')

gulp.task 'default', ['clean'], ->
  gulp.start 'build'
