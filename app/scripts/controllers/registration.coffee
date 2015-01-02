'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:RegistrationCtrl
 # @description
 # # RegistrationCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'RegistrationCtrl', ($scope, $log, $location, UserService) ->
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
        $location.path('#/')
      promise.error (data, status, headers, config) =>
        @registrationFailed = true

  @isConfirmPasswordValid = () ->
    @password == @confirmPassword

