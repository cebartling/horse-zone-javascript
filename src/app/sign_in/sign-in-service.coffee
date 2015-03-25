'use strict'

angular.module('horseZone').factory 'SignInService',
#  ($http, $log, authorizationService) ->
  ($http, $log) ->
    class SignInService
      constructor: ->
        @loginUrl = '/users/sign_in'

      signIn: (credentials) ->
#        base64EncodedAuth = btoa("#{credentials.email}:#{credentials.password}")
#        options = {headers: {'Authorization': "Basic #{base64EncodedAuth}"}}
        options = {headers: {}}
        data = {user: {email: credentials.email, password: credentials.password}}
        promise = $http.post(@loginUrl, data, options)
        promise.then (response) ->
          $log.info 'Setting the web token'
#          authorizationService.setAuthorization(response.data)
        promise

    new SignInService()
