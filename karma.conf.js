'use strict';

module.exports = function (config) {

  var configuration = {
    // base path, that will be used to resolve files and exclude
    basePath: '.',
    //  # list of files / patterns to load in the browser
    files: [
      'bower_components/jquery/dist/jquery.js',
      'bower_components/lodash/dist/lodash.js',
      'bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js',
      'bower_components/angular/angular.js',
      'bower_components/angular-mocks/angular-mocks.js',
      'bower_components/angular-animate/angular-animate.js',
      'bower_components/angular-cookies/angular-cookies.js',
      'bower_components/angular-sanitize/angular-sanitize.js',
      'bower_components/angular-touch/angular-touch.js',
      'bower_components/angular-bootstrap/ui-bootstrap.js',
      'bower_components/angular-bootstrap/ui-bootstrap-tpls.js',
      'bower_components/angular-ui-router/release/angular-ui-router.js',
      'bower_components/restangular/dist/restangular.js',
      'src/app/index.coffee',
      'src/components/**/*.coffee',
      'src/app/**/*.coffee',
      'spec/**/*.coffee'
    ],
    //  # list of files / patterns to exclude
    exclude: [],

    autoWatch: false,

    frameworks: ['jasmine'],

    ngHtml2JsPreprocessor: {
      stripPrefix: 'src/',
      moduleName: 'gulpAngular'
    },

    browsers: ['PhantomJS'],

    plugins: [
      'karma-phantomjs-launcher',
      'karma-jasmine',
      'karma-coverage',
      'karma-coffee-preprocessor',
      'karma-ng-html2js-preprocessor'
    ],
    port: 9090,
    //  Level of logging
    //  Possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_DEBUG,
    //  # Continuous Integration mode
    //  # if true, it capture browsers, run tests and exit
    singleRun: false,
    colors: true,
    preprocessors: {
      '**/*.coffee': ['coffee'],
      'src/**/*.html': ['ng-html2js']
    }
  };

  //// This block is needed to execute Chrome on Travis
  //// If you ever plan to use Chrome and Travis, you can keep it
  //// If not, you can safely remove it
  //// https://github.com/karma-runner/karma/issues/1144#issuecomment-53633076
  //if(configuration.browsers[0] === 'Chrome' && process.env.TRAVIS) {
  //  configuration.customLaunchers = {
  //    'chrome-travis-ci': {
  //      base: 'Chrome',
  //      flags: ['--no-sandbox']
  //    }
  //  };
  //  configuration.browsers = ['chrome-travis-ci'];
  //}

  config.set(configuration);
};
