'use strict'

angular.module('horseZone').controller 'SignInCtrl', (SignInService, $state) ->

  @credentials = {emailAddress: '', password: ''}
  @signInError = false

  @signIn = ->
    promise = SignInService.signIn @credentials
    promise.then @onSuccessSignIn, @onErrorSignIn

  @onSuccessSignIn = ->
    $state.go 'welcome'

  @onErrorSignIn = =>
    @signInError = true
    $state.go 'signIn'

  @
