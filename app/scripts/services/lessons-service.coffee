'use strict'

###*
 # @ngdoc service
 # @name horseZoneJavascriptApp.LessonsService
 # @description
 # # LessonsService
 # Service in the horseZoneJavascriptApp.
###
angular.module('horseZoneJavascriptApp').factory 'LessonsService', ($http, $log) ->
  return {

#  createNewUser: (email, password) ->
#    $log.info "===> Creating a new user with email: #{email}."
#    requestData = {email: email, password: password}
#    promise = $http(url: '/api/v1/users', data: requestData, dataType: 'json', method: 'POST',
#      headers: {
#        "Content-Type": "application/json"
#      })
#
#    promise.success (data, status, headers, config) ->
#
#    promise.error (data, status, headers, config) ->
#
#    promise
  }
