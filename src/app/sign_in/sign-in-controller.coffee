'use strict'

angular.module('horseZone')
.controller 'SignInCtrl',
  (SignInService, $state) ->
    @credentials = {emailAddress: '', password: ''}

    @signIn = ->
      promise = SignInService.signIn @credentials
      promise.then @onSuccessSignIn, @onErrorSignIn

    @onSuccessSignIn = ->
      alert "Successfully signed in"
#      $state.go 'welcome'

    @onErrorSignIn = =>
      @loginError = true
      $state.go 'signIn'

    @
