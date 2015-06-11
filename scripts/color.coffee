# Description:
#   色変換するbot
#

module.exports = (robot) ->
    robot.hear /(#[1-9,a-f,A-F]{6})/, (msg) ->
        msg.send msg.match[1]