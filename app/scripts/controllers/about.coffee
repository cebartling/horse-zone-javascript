'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
