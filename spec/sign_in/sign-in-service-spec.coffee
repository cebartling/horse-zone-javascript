'use strict'

describe 'SignInService', ->
  SignInService = undefined
  $rootScope = undefined
  $httpBackend = undefined

  beforeEach module('horseZone')

  beforeEach inject (_SignInService_, _$rootScope_, _$httpBackend_) ->
    $rootScope = _$rootScope_
    $httpBackend = _$httpBackend_
    SignInService = _SignInService_

  describe '.signIn', ->
    credentials = {emailAddress: 'joe.smith@mycompany.com', password: 'p4$$w0rD'}
    expectedData = {email_address: credentials.emailAddress, password: credentials.password}
    expectedHeaders = {'Content-Type': 'application/json', 'Accept': 'application/json'}
    expectedUrl = 'authenticate'
    authRequestHandler = undefined
    expectedSignedJwt = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWV9.eoaDVGTClRdfxUZXiPs3f8FmJDkDE_VCQFXqKxpLsts'

    beforeEach ->
      authRequestHandler = $httpBackend.when('POST', expectedUrl, expectedData,
        expectedHeaders).respond(expectedSignedJwt)

    afterEach ->
      $httpBackend.verifyNoOutstandingExpectation()
      $httpBackend.verifyNoOutstandingRequest()

    it 'function is defined', ->
      expect(SignInService.signIn).toBeDefined()

    it 'returns the promise from the $http invocation', ->
      $httpBackend.expectPOST(expectedUrl, expectedData, expectedHeaders)
      actual = SignInService.signIn(credentials)
      $httpBackend.flush()
      expect(actual).toBeDefined()

#    it 'invokes the \'then\' event handler on the promise', ->
#      $httpBackend.expectPOST(expectedUrl, expectedData, expectedHeaders)
#      spyOn(authorizationService, 'setAuthorization')
#      actual = SignInService.signIn(credentials)
#      $httpBackend.flush()
#      expect(authorizationService.setAuthorization).toHaveBeenCalledWith(expectedSignedJwt)
