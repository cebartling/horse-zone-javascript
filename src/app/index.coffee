'use strict'

angular.module 'horseZone',
  [
    'ngAnimate',
    'ngCookies',
    'ngTouch',
    'ngSanitize',
    'restangular',
    'ui.router',
    'ui.bootstrap'
  ]
.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state "home",
    url: "/",
    templateUrl: "app/main/main.html",
    controller: "MainCtrl"

  $stateProvider.state 'signIn',
    url: '/sign_in',
    templateUrl: 'app/sign_in/sign_in.html',
    controller: 'SignInCtrl',
    controllerAs: 'SignInCtrl'

  $stateProvider.state 'welcome',
    url: '/welcome',
    templateUrl: 'app/welcome/welcome.html',
    controller: 'WelcomeCtrl',
    controllerAs: 'WelcomeCtrl'

  $urlRouterProvider.otherwise '/sign_in'

