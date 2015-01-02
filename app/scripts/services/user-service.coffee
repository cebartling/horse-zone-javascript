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
    promise = $http.post('/api/v1/users', requestData, {
      headers: {
        "Accept": "application/json; charset=utf-8",
        "Content-Type": "application/json; charset=utf-8"
      }
    })
    promise.success (data, status, headers, config) =>
      @signIn(email, password)

    promise.error (data, status, headers, config) =>

    promise

  signIn: (email, password) ->
    $log.info "===> Signing in with email: #{email}."
    requestData = {email: email, password: password}
    promise = $http.post('/api/v1/sessions', requestData, {
      headers: {
        "Accept": "application/json; charset=utf-8",
        "Content-Type": "application/json; charset=utf-8"
      }
    })
    promise.success (data, status, headers, config) ->

    promise.error (data, status, headers, config) ->

    promise

  }


