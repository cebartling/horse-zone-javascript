'use strict'

###*
 # @ngdoc service
 # @name horseZoneJavascriptApp.UserService
 # @description
 # # UserService
 # Service in the horseZoneJavascriptApp.
###
angular.module('horseZoneJavascriptApp').factory 'UserService', ($http, $log) ->
  return {
  user: undefined,

  createNewUser: (email, password) ->
    $log.info "===> Creating a new user with email: #{email}."
    requestData = {email: email, password: password}
    promise = $http(url: '/api/v1/users', data: requestData, dataType: 'json', method: 'POST',
      headers: {
        "Content-Type": "application/json"
      })

    promise.success (data, status, headers, config) ->

    promise.error (data, status, headers, config) ->

    promise
  }
