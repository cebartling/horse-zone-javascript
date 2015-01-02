'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:MenuCtrl
 # @description
 # # MenuCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'MenuCtrl', ($scope, $log, $location) ->

  @isMenuDisplayed: (menuKey) ->
    false

  @isUserSignedIn: () ->
    false

  @isRoute: (routeName) ->
    $location.path() == routeName
