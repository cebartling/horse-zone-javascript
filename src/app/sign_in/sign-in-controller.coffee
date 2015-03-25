'use strict'

angular.module('horseZone')
.controller 'SignInCtrl',
  (SignInService, $state) ->
    @credentials = {email: '', password: ''}

    @signIn = () ->
      promise = SignInService.signIn @credentials
      promise.then @onSuccessSignIn, @onErrorSignIn

    @onSuccessSignIn = ->
#      $state.go 'welcome'

    @onErrorSignIn = =>
      @loginError = true
      $state.go 'signIn'

    @
