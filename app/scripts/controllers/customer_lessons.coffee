'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:CustomerLessonsCtrl
 # @description
 # # CustomerLessonsCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'CustomerLessonsCtrl', ($scope, $log, LessonsService) ->

  @currentDay = () ->
    LessonsService.currentDate()

  @currentWeek = () ->
    sunday = LessonsService.currentDate().day(0)
    saturday = LessonsService.currentDate().day(6)
    "#{sunday.format('MMM D, YYYY')} - #{saturday.format('MMM D, YYYY')}"

  @moveToPreviousWeek = () ->
    LessonsService.moveCurrentDate(-7)

  @moveToNextWeek = () ->
    LessonsService.moveCurrentDate(7)

  @today = () ->
    LessonsService.moveToToday()

  @submitForm = (isValid) ->
    if isValid
      $log.info ""
