'use strict'

angular.module('horseZone').controller 'AccountCreationCtrl', (AccountCreationService) ->
  @accountCreationError = false

  @account = {
    firstName: 'Kurt'
    lastName: 'Foobar'
    emailAddress: 'Kurt@foobar.com'
    password: 'pwd12345'
    confirmPassword: 'pwd12345'
#    firstName: undefined
#    lastName: undefined
#    emailAddress: undefined
#    password: undefined
#    confirmPassword: undefined
  }

  @formErrors = {
    firstName: false
    lastName: false
    emailAddress: false
    password: false
    confirmPassword: false
  }

  @createAccount = ->
#    @validateForm
    AccountCreationService.create @account

#  @validateForm = ->
#    if not @account.password
#      @formErrors.password = true

  @
