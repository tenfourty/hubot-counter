# Description:
#   This script allows hubot to count whenever you ++ or -- something, for example:
#      coffee++
#      coffee: 1
#
# Commands:
#   hubot get count <item> - get the current count of <item> you can increment with item++ and decrement with item--
#
# Author:
#   Jeremy Brown <jeremy@tenfourty.com>
#

module.exports = (robot) ->

  robot.hear /(\w+)\+\+/i, (res) ->
    key = res.match[1].trim().toLowerCase()
    value = robot.brain.get(calculateKey(key)) ? 0
    value += 1
    robot.brain.set(calculateKey(key), value)
    res.send "#{key}: #{value}"

  robot.hear /(\w+)--/i, (res) ->
    key = res.match[1].trim().toLowerCase()
    value = robot.brain.get(calculateKey(key)) ? 0
    value -= 1
    robot.brain.set(calculateKey(key), value)
    res.send "#{key}: #{value}"

  robot.respond /get count (.*)/i, (res) ->
    key = res.match[1].trim().toLowerCase()
    value = robot.brain.get(calculateKey(key)) ? 0
    res.send "#{key}: #{value}"

  # Description: returns keys
  #  Params:
  #   recordType: (channel|user)
  #   recordName: channel_name or user_name
  #   weekNum: 0-52
  #
  calculateKey = (key) ->
    "count:#{key}"
