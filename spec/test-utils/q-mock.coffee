window.horseZone ||= {}
window.horseZone.q ||= {}

class window.horseZone.q.Mock
  then: (@resolveFunc, @rejectFunc) ->

  resolve: (args) ->
    @resolveFunc(args)

  reject: (args) ->
    @rejectFunc(args)

