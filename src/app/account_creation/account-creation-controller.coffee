'use strict'

angular.module('horseZone').controller 'AccountCreationCtrl', (AccountCreationService) ->
  @accountCreationError = false

  @account = {
    first_name: 'Kurt'
    last_name: 'Foobar'
    email_address: 'Kurt@foobar.com'
    password: ''
    confirm_password: ''
#    firstName: undefined
#    lastName: undefined
#    emailAddress: undefined
#    password: undefined
#    confirmPassword: undefined
  }

#  @formErrors = {
#    firstName: false
#    lastName: false
#    emailAddress: false
#    password: false
#    confirmPassword: false
#  }

  @createAccount = ->
#    @validateForm
    AccountCreationService.create @account

#  @validateForm = ->
#    if not @account.password
#      @formErrors.password = true

  @
