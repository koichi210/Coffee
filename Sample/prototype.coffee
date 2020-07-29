module.exports = (robot) ->
  robot.respond /who r u/i, (msg) ->
    msg.send "i'm hubot!"

  robot.hear /HELLO$/i, (msg) ->
    msg.send "hello,world"

  robot.respond /who am i/i, (msg) ->
    msg.send "u r #{msg.message.user.name}"

  robot.respond /what is this (.*)/i, (msg) ->
    msg.send "This is #{msg.match[1]}"
