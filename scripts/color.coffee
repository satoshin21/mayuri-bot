# Description:
#   色変換するbot
#

module.exports = (robot) ->
    robot.hear /(#[1-9,a-f,A-F]{6})/, (msg) ->
        colorCode = msg.match[1]
        
        r = colorCode[1..2]
        msg.send r