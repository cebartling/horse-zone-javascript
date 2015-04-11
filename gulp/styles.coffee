'use strict'
gulp = require('gulp')
paths = gulp.paths
$ = require('gulp-load-plugins')()
gulp.task 'styles', ->
  sassOptions = style: 'expanded'
  injectFiles = gulp.src([
    "#{paths.src}/{app,components}/**/*.scss"
    "!#{paths.src}/app/index.scss"
    "!#{paths.src}/app/vendor.scss"
  ], read: false)
  injectOptions =
    transform: (filePath) ->
      filePath = filePath.replace(paths.src + '/app/', '')
      filePath = filePath.replace(paths.src + '/components/', '../components/')
      '@import \'' + filePath + '\';'
    starttag: '// injector'
    endtag: '// endinjector'
    addRootSlash: false
  indexFilter = $.filter('index.scss')
  gulp.src([
    "#{paths.src}/app/index.scss"
    "#{paths.src}/app/vendor.scss"
  ]).pipe(indexFilter).pipe($.inject(injectFiles, injectOptions)).pipe(indexFilter.restore()).pipe($.sass(sassOptions)).pipe($.autoprefixer()).on('error', (err) ->
    console.error err.toString()
    @emit 'end'
    return
  ).pipe gulp.dest(paths.tmp + '/serve/app/')

