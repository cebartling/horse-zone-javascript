'use strict'

###*
 # @ngdoc overview
 # @name horseZoneJavascriptApp
 # @description
 # # horseZoneJavascriptApp
 #
 # Main module of the application.
###
angular.module('horseZoneJavascriptApp', [
  'ngAnimate',
  'ngAria',
  'ngCookies',
  'ngMessages',
  'ngResource',
  'ngRoute',
  'ngSanitize',
  'ngTouch',
  'angularSpinner',
  'angularMoment'
]).config ($routeProvider) ->
  $routeProvider
  .when '/',
    templateUrl: 'views/welcome.html'
    controller: 'WelcomeCtrl'
  .when '/lessons',
    templateUrl: 'views/customer_lessons.html'
    controller: 'CustomerLessonsCtrl'
  .when '/about',
    templateUrl: 'views/about.html'
    controller: 'AboutCtrl'
  .when '/profile',
    templateUrl: 'views/profile.html'
    controller: 'ProfileCtrl'
  .when '/signin',
    templateUrl: 'views/signin.html'
    controller: 'SigninCtrl'
  .when '/register',
    templateUrl: 'views/registration.html'
    controller: 'RegistrationCtrl'
  .otherwise
      redirectTo: '/'

