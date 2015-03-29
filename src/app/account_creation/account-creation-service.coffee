'use strict'

angular.module('horseZone').factory 'AccountCreationCtrl', ($http, $log) ->

  class AccountCreationService
#    constructor: ->
#      @loginUrl = 'authenticate'
#
#    signIn: (credentials) ->
#      $log.info "Attempting to sign in '#{credentials.emailAddress}'."
#      #        base64EncodedAuth = btoa("#{credentials.email}:#{credentials.password}")
#      #        options = {headers: {'Authorization': "Basic #{base64EncodedAuth}"}}
#      options = {headers: {'Content-Type': 'application/json', 'Accept': 'application/json'}}
#      data = {email_address: credentials.emailAddress, password: credentials.password}
#      promise = $http.post(@loginUrl, data, options)
#      promise.then (response) ->
#        $log.info 'Setting the web token'
#      #          authorizationService.setAuthorization(response.data)
#      promise

  new AccountCreationService()
