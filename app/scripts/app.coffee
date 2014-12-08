'use strict'

###*
 # @ngdoc overview
 # @name horseZoneJavascriptApp
 # @description
 # # horseZoneJavascriptApp
 #
 # Main module of the application.
###
angular
  .module('horseZoneJavascriptApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/welcome.html'
        controller: 'WelcomeCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

