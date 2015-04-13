browserSyncInit = (baseDir, files, browser) ->
  browser = if browser == undefined then 'default' else browser
  routes = null
  if baseDir == paths.src or util.isArray(baseDir) and baseDir.indexOf(paths.src) != -1
    routes = '/bower_components': 'bower_components'
  browserSync.instance = browserSync.init(files,
    startPath: '/'
    server:
      baseDir: baseDir
      middleware: middleware
      routes: routes
    browser: browser)
  return

'use strict'
gulp = require('gulp')
paths = gulp.paths
util = require('util')
browserSync = require('browser-sync')
middleware = require('./proxy')

gulp.task 'serve', [ 'watch' ], ->
  browserSyncInit [
    paths.tmp + '/serve'
    paths.src
  ], [
    paths.tmp + '/serve/{app,components}/**/*.css'
    paths.tmp + '/serve/{app,components}/**/*.js'
    paths.src + 'src/assets/images/**/*'
    paths.tmp + '/serve/*.html'
    paths.tmp + '/serve/{app,components}/**/*.html'
    paths.src + '/{app,components}/**/*.html'
  ]
  return

gulp.task 'serve:dist', [ 'build' ], ->
  browserSyncInit paths.dist, []
  return

gulp.task 'serve:e2e', [ 'inject' ], ->
  browserSyncInit [
    paths.tmp + '/serve'
    paths.src
  ], null, []
  return

gulp.task 'serve:e2e-dist', [ 'build' ], ->
  browserSyncInit paths.dist, []
  return

# ---
# generated by js2coffee 2.0.1