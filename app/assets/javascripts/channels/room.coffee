App.cable = ActionCable.createConsumer("/cable")

App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    
  disconnected: ->
    # Called when the subscription has been terminated by the server
    

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#chatbox').scrollTop($('#chatbox').scrollHeight = 90000000)
    $('#messages').append data['message']

  happy: (message)->
    @perform 'happy', message: message

  sad: (message)->
    @perform 'sad', message: message

  calm: (message)->
    @perform 'calm', message: message
  
  angry: (message)->
    @perform 'angry', message: message

$(document).on 'keyup', '.emoji-wysiwyg-editor', (event) ->
  if event.keyCode is 13 # return = send
    App.room[window.location.pathname.split('/')[1]] event.target.innerHTML
    event.target.innerHTML = ''
    event.preventDefault()
    $('#chatbox').scrollTop($('#chatbox').scrollHeight = 90000000)
    $(".audio-play")[0].currentTime = 0
    return $(".audio-play")[0].play()