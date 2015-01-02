'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:MenuCtrl
 # @description
 # # MenuCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'MenuCtrl', ($scope, $log) ->

  @isMenuDisplayed: (menuKey) ->
    false

  @isUserSignedIn: () ->
    false
