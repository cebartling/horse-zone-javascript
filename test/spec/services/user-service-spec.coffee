'use strict'

describe 'Service: UserService', ->

  # load the service's module
  beforeEach module 'horseZoneJavascriptApp'

  # instantiate service
  UserService = {}

  beforeEach inject (_UserService_) ->
    UserService = _UserService_

  describe 'createNewUser', ->

    it 'should do something', ->
#      UserService.createNewUser 'foobar@example.com', '38f8gA387gaBg'
#      expect(!!UserService).toBe true
