'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:CustomerLessonsCtrl
 # @description
 # # CustomerLessonsCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'ProfileCtrl',
  ($scope, $log, usSpinnerService) ->
    @spinnerOptions = {
      lines: 13, # The number of lines to draw
      length: 12, # The length of each line
      width: 8, # The line thickness
      radius: 20, # The radius of the inner circle
      corners: 1, # Corner roundness (0..1)
      rotate: 0, # The rotation offset
      direction: 1, # 1: clockwise, -1: counterclockwise
      speed: 1, # Rounds per second
      trail: 27, # Afterglow percentage
      shadow: false, # Whether to render a shadow
      hwaccel: true, # Whether to use hardware acceleration
      className: 'spinner', # The CSS class to assign to the spinner
      zIndex: 2e9, # The z-index (defaults to 2000000000)
      top: '17%', # Top position relative to parent
      left: '50%' # Left position relative to parent,
      color: '#0c84e4'
    }
    @profileSubmitted = false
    @saveSuccessful = false
    @saveFailed = false
    @user = undefined

    @submitForm = (isValid) ->
      if isValid
        $log.info "Updating user profile...#{@emailAddress}"
        @profileSubmitted = true
#        promise = UserService.createNewUser @emailAddress, @password
#        promise.success (data, status, headers, config) =>
#          @registrationSuccessful = true
#        promise.error (data, status, headers, config) =>
#          @registrationFailed = true


