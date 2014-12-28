'use strict'

###*
 # @ngdoc service
 # @name horseZoneJavascriptApp.ProfileService
 # @description
 # # ProfileService
 # Service in the horseZoneJavascriptApp.
###
angular.module('horseZoneJavascriptApp').factory 'ProfileService', ($http, $log) ->
  return {
  user: undefined,
  stable: undefined,

  retrieveProfile: (userId) ->
    $log.info "===> Retrieving profile by id: #{userId}"
    requestData = {}
    promise = $http(
      url: "/api/v1/users/#{userId}",
      method: 'GET',
      headers: {
        "Content-Type": "application/json"
      })

    promise.success (data, status, headers, config) ->

    promise.error (data, status, headers, config) ->

    promise
  }
