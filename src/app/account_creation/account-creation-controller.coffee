'use strict'

angular.module('horseZone').controller 'AccountCreationCtrl', ($state, AccountCreationService) ->
  @accountCreationError = true

  @account = {
    firstName: undefined
    lastName: undefined
    emailAddress: undefined
    password: undefined
    confirmPassword: undefined
  }

  @formErrors = {
    firstName: false
    lastName: false
    emailAddress: false
    password: false
    confirmPassword: false
  }

  @createAccount = ->
    @validateForm

  @validateForm = ->
    if not @account.password
      @formErrors.password = true

  @
