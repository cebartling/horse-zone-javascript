'use strict'

describe 'Controller: RegistrationCtrl', ->

  # load the controller's module
  beforeEach module 'horseZoneJavascriptApp'

  RegistrationCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    RegistrationCtrl = $controller 'RegistrationCtrl', {
      $scope: scope
    }

#  it 'should attach emailAddressValid to the controller instance', ->
#    expect(RegistrationCtrl.emailAddressValid).toBe true
#
#  it 'should attach passwordValid to the controller instance', ->
#    expect(RegistrationCtrl.passwordValid).toBe true
#
#  it 'should attach confirmPasswordValid to the controller instance', ->
#    expect(RegistrationCtrl.confirmPasswordValid).toBe true
