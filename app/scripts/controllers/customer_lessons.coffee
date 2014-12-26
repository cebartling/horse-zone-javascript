'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:CustomerLessonsCtrl
 # @description
 # # CustomerLessonsCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'CustomerLessonsCtrl', ($scope, $log) ->
  @submitForm = (isValid) ->
    if isValid
      $log.info ""
