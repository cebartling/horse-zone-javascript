'use strict'

gulp = require('gulp')
karma = require('karma').server

gulp.task 'test', (done) ->
  karma.start {configFile: __dirname + '/../karma.conf.js', singleRun: true}, done
