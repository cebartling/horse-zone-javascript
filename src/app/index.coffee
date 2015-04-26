'use strict'

horseZoneApp = angular.module('horseZone',
  [
    'ngAnimate',
    'ngCookies',
    'ngTouch',
    'ngSanitize',
    'restangular',
    'ui.router',
    'ui.bootstrap',
    'angular-cache'
  ]
)

horseZoneApp.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state 'signIn',
    url: '/sign_in',
    templateUrl: 'app/sign_in/sign_in.html',
    controller: 'SignInCtrl',
    controllerAs: 'SignInCtrl'

  $stateProvider.state 'accountCreation',
    url: '/account_creation',
    templateUrl: 'app/account_creation/account_creation.html',
    controller: 'AccountCreationCtrl',
    controllerAs: 'AccountCreationCtrl'

  $stateProvider.state 'welcome',
    url: '/welcome',
    templateUrl: 'app/welcome/welcome.html',
    controller: 'WelcomeCtrl',
    controllerAs: 'WelcomeCtrl'

  $urlRouterProvider.otherwise '/sign_in'

horseZoneApp.config (RestangularProvider) ->
  RestangularProvider.setBaseUrl '/api'
  RestangularProvider.setDefaultHeaders {
    'Content-Type': 'application/json'
    'Accept': 'application/json'
  }

horseZoneApp.config (CacheFactoryProvider) ->
  angular.extend CacheFactoryProvider.defaults, { maxAge: 15 * 60 * 1000 }
