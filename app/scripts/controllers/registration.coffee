'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:RegistrationCtrl
 # @description
 # # RegistrationCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'RegistrationCtrl', ($scope) ->
  @emailAddressValid = true
  @passwordValid = true
  @confirmPasswordValid = true
