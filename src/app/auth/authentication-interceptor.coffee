'use strict'

horseZoneApp = angular.module('horseZone')

horseZoneApp.factory 'AuthorizationInterceptor', ($q, AuthorizationService, $location) ->
  class AuthorizationInterceptor
    request: (config) ->
      config.headers = config.headers || {}
      if config.authType is 'bearer'
        config.headers.Authorization = 'Bearer ' + AuthorizationService.getBearer()

      return config || $q.when(config)

    responseError: (response) ->
      if response.status is 401 || response.status is 403
        $location.path('/sign_in')

      return $q.reject(response)

  new AuthorizationInterceptor()


horseZoneApp.config ($httpProvider) ->
  $httpProvider.interceptors.push('AuthorizationInterceptor')
