'use strict'

angular.module('horseZone').factory 'SignInService', ($http, $log) ->
  class SignInService
    constructor: ->
      @loginUrl = 'authenticate'

    signIn: (credentials) ->
      $log.info "Attempting to sign in '#{credentials.emailAddress}'."
      options = {headers: {'Content-Type': 'application/json', 'Accept': 'application/json'}}
      data = {email_address: credentials.emailAddress, password: credentials.password}
      promise = $http.post(@loginUrl, data, options)
      promise.then (response) ->
        $log.info 'Setting the web token'
      #          authorizationService.setAuthorization(response.data)
      promise

  new SignInService()
