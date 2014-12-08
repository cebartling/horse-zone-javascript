'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:WelcomeCtrl
 # @description
 # # WelcomeCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp')
  .controller 'WelcomeCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
