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
  @registrationSubmitted = false
  @registrationSuccessful = false
  @registrationFailed = false

  @submitForm = (isValid) ->
    if isValid
      $log.info "Registering user...#{@emailAddress}"
      @registrationSubmitted = true
      promise = UserService.createNewUser @emailAddress, @password
      promise.success (data, status, headers, config) =>
        @registrationSuccessful = true
      promise.error (data, status, headers, config) =>
        @registrationFailed = true
    else
      alert "The form is invalid."


