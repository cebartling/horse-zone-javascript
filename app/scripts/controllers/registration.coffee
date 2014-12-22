'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:RegistrationCtrl
 # @description
 # # RegistrationCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'RegistrationCtrl', ($scope, $log, UserService) ->
  @emailAddress = ''
  @password = ''
  @confirmPassword = ''

  @submitForm = (isValid) ->
    if isValid
      $log.info "Registering user...#{@emailAddress}"
      UserService.createNewUser @emailAddress, @password
    else
      alert "The form is invalid."


