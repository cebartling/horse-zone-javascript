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
  @emailAddressValid = true
  @passwordValid = true
  @confirmPasswordValid = true

  @doRegister = ->
    $log.info "Registering user...#{@emailAddress}"
    if @emailAddress and @password
      UserService.createNewUser @emailAddress, @password
    else
      alert "The form is invalid."


