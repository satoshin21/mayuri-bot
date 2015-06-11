# Description:
#   色変換するbot
#

module.exports = (robot) ->
    robot.hear /(#[1-9,a-f,A-F]{6})/, (msg) ->
        colorCode = msg.match[1]
        
        r = colorCode[1..2]
        g = colorCode[3..4]
        b = colorCode[5..6]
        
        msg.send r
        msg.send g
        msg.send b
        msg.send parseInt("0x123"、16)
        
        red = parseInt(r,16)
        green = parseInt(g,16)
        blue = parseInt(b,16)
        msg.send blue