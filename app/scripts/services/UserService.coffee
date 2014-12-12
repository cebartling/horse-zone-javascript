'use strict'

###*
 # @ngdoc service
 # @name horseZoneJavascriptApp.UserService
 # @description
 # # UserService
 # Service in the horseZoneJavascriptApp.
###
angular.module('horseZoneJavascriptApp').service 'UserService', ($http, $log) ->

  user = undefined

  @createNewUser = (username, password) ->
    $log.info "===> Creating a new user."
