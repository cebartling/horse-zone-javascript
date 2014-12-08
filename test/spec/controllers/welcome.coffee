'use strict'

describe 'Controller: WelcomeCtrl', ->

  # load the controller's module
  beforeEach module 'horseZoneJavascriptApp'

  WelcomeCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    WelcomeCtrl = $controller 'WelcomeCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
