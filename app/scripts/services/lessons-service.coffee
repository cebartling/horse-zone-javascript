'use strict'

###*
 # @ngdoc service
 # @name horseZoneJavascriptApp.LessonsService
 # @description
 # # LessonsService
 # Service in the horseZoneJavascriptApp.
###
angular.module('horseZoneJavascriptApp').factory 'LessonsService', ($http, $log) ->
  return {
  _currentDate: moment()

  currentDate: () ->
    moment(@_currentDate.toDate())

  moveCurrentDate: (deltaInDays) ->
    @_currentDate.add(deltaInDays, 'days')

  moveToToday: () ->
    @_currentDate = moment()

  getSchedule: () ->
    [
      {
        "time": "9:00 AM",
        "sunday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "monday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "tuesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "wednesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "thursday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "friday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "saturday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}]
      },
      {
        "time": "9:30 AM",
        "sunday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "monday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "tuesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "wednesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "thursday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "friday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "saturday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}]
      },
      {
        "time": "10:00 AM",
        "sunday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "monday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "tuesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "wednesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "thursday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "friday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "saturday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}]
      },
      {
        "time": "10:30 AM",
        "sunday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "monday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "tuesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "wednesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "thursday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "friday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "saturday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}]
      },
      {
        "time": "11:00 AM",
        "sunday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "monday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "tuesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "wednesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "thursday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "friday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "saturday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}]
      },
      {
        "time": "11:30 AM",
        "sunday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "monday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "tuesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "wednesday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "thursday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "friday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}],
        "saturday": [{"name": "Amy Hutchison"}, {"name": "Todd Perkins"}, {"name": "Lyndsay Belfanz"}]
      }
    ]




#  createNewUser: (email, password) ->
#    $log.info "===> Creating a new user with email: #{email}."
#    requestData = {email: email, password: password}
#    promise = $http(url: '/api/v1/users', data: requestData, dataType: 'json', method: 'POST',
#      headers: {
#        "Content-Type": "application/json"
#      })
#
#    promise.success (data, status, headers, config) ->
#
#    promise.error (data, status, headers, config) ->
#
#    promise
  }
