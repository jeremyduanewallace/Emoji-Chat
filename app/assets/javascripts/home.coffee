# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#happy").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/need"
  $("#sad").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/need"
  $("#angry").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/need"
  $("#calm").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/need"
  $("#happy-need").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/show"
  $("#sad-need").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/show"
  $("#angry-need").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/show"
  $("#calm-need").click ->
    $(".audio-play")[0].currentTime = 0
    $(".audio-play")[0].play()
    delay = (ms, func) -> setTimeout func, ms
    delay 2000, -> window.location.href = "/show"

