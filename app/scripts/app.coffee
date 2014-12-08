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
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

