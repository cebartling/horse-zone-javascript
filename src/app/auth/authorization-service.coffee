'use strict'

angular.module('horseZone').factory 'AuthorizationService', (CacheFactory) ->
  class AuthorizationService
    constructor: ->
      CacheFactory.createCache('authorizationServiceCache', {
        deleteOnExpire: 'aggressive'
        storageMode: 'localStorage'
      })
      @localCache = CacheFactory.get 'authorizationServiceCache'

    setAuthorization: (auth) ->
      @localCache.put 'auth', auth
      parts = auth.split(/\./)
      @localCache.put 'header', JSON.parse(atob(parts[0]))
      @localCache.put 'credentials', JSON.parse(atob(parts[1]))
      @localCache.put 'encodedSignature', parts[2]
      @localCache.setOptions {maxAge: @calculateMaxAge()}

    calculateMaxAge: () ->
      now = moment()
      expiration = (@localCache.get 'credentials')?.user?.jwtSignatureExpiration
      if expiration
        expiration_moment = moment expiration, 'MMM D, YYYY HH:mm:ss [Z]'
      else
        expiration_moment = moment().endOf 'day'
      expiration_moment.diff now

    isAuthorized: (role) ->
      _.contains((@localCache.get 'credentials')?.permissions, role)

    getBearer: () ->
      @localCache.get 'auth'

    getUserName: () ->
      (@localCache.get 'credentials')?.user?.username

    getUserId: () ->
      (@localCache.get 'credentials')?.user?.id

    logOff: () ->
      DSCacheFactory.clearAll()

  new AuthorizationService()
