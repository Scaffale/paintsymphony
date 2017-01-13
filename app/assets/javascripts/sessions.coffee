# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
startTimer = (duration, display) ->
  start = Date.now()
  diff = undefined
  minutes = undefined
  seconds = undefined

  timer = ->
    # get the number of seconds that have elapsed since 
    # startTimer() was called
    diff = duration - ((Date.now() - start) / 1000 | 0)
    # does the same job as parseInt truncates the float
    minutes = diff / 60 | 0
    seconds = diff % 60 | 0
    minutes = if minutes < 10 then '0' + minutes else minutes
    seconds = if seconds < 10 then '0' + seconds else seconds
    display.textContent = minutes + ':' + seconds
    if diff <= 0
      start = Date.now() + 1000
    return

  # we don't want to wait a full second before the timer starts
  timer()
  setInterval timer, 1000
  return

window.onload = ->
  fiveMinutes = 60 * 10
  display = document.querySelector('#time')
  startTimer fiveMinutes, display
  return

$(document).on 'click', '#bottonePausa', ->
  $('#pausaTimer')[0].style.position = 'absolute'
  $('#pausaTimer')[0].style.left = -10000 + 'px'
  $('#istruzioniDue')[0].style.margin = 100 + 'px'
  return