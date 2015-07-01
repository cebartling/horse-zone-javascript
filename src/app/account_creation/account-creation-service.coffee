'use strict'

angular.module('horseZone').factory 'AccountCreationService', ($http, $log, Restangular) ->

  class AccountCreationService

    create: (account) ->
      users = Restangular.all 'users'
      promise = users.post account
      promise

  new AccountCreationService()
