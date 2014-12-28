'use strict'

###*
 # @ngdoc function
 # @name horseZoneJavascriptApp.controller:CustomerLessonsCtrl
 # @description
 # # CustomerLessonsCtrl
 # Controller of the horseZoneJavascriptApp
###
angular.module('horseZoneJavascriptApp').controller 'CustomerLessonsCtrl',
  ($scope, $log, usSpinnerService, LessonsService) ->
    @selectedTrainer = undefined
    @selectedDate = undefined
    @selectedTime = undefined
    @spinnerOptions = {
      lines: 15, # The number of lines to draw
      length: 12, # The length of each line
      width: 8, # The line thickness
      radius: 25, # The radius of the inner circle
      corners: 1, # Corner roundness (0..1)
      rotate: 0, # The rotation offset
      direction: 1, # 1: clockwise, -1: counterclockwise
      speed: 1, # Rounds per second
      trail: 27, # Afterglow percentage
      shadow: true, # Whether to render a shadow
      hwaccel: true, # Whether to use hardware acceleration
      className: 'spinner', # The CSS class to assign to the spinner
      zIndex: 2e9, # The z-index (defaults to 2000000000)
      top: '17%', # Top position relative to parent
      left: '50%' # Left position relative to parent,
      color: '#91F5FA'
    }


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

    @schedule = () ->
      LessonsService.getSchedule()

    @showLessonSignupDialog = (availableTrainer, time, dayNumber) ->
      @selectedTrainer = availableTrainer
      @selectedDate = LessonsService.currentDate().day(dayNumber)
      @selectedTime = time
      $('#lessonModal').modal('show')

    @confirmLesson = () ->
      $('#lessonModal').modal('hide')
      usSpinnerService.spin('lessons-spinner')
      fn = () ->
        usSpinnerService.stop('lessons-spinner')
      setTimeout(fn, 3500)
