# Description:
#   色変換するbot
#

module.exports = (robot) ->
    robot.hear /(#[0-9,a-f,A-F]{6})/, (msg) ->
        colorCode = msg.match[1]
        
        r = colorCode[1..2]
        g = colorCode[3..4]
        b = colorCode[5..6]
        
        red = parseInt(r,16)
        green = parseInt(g,16)
        blue = parseInt(b,16)
        
        rColor = Math.ceil((red / 255 ) * 1000) / 1000
        gColor = Math.ceil((green / 255 ) * 1000) / 1000
        bColor = Math.ceil((blue / 255 ) * 1000) / 1000
        
        swiftCode = "UIColor(red:" + rColor + ", green:" + gColor + ", blue:" + bColor + ", alpha: 1.0)"
        msg.send "Swiftで書くと\n\n" + swiftCode + "\n\nになるのです！"