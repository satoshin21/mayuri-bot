# Description:
#   A hubot script return Yahoo Rain-cloud(Amagumo) Radar infomation.
#
# Commands:
#   hubot amagumo me <area> - Returns a Yahoo Rain-Cloud(Amagumo) Rader map view of <area>
#   hubot amagumo zoom me <area> - Returns a zoom Rader map view of <area>
#   hubot amagumo japan - Returns a Rader map view of the whole japan area
#
# Author:
#   asmz

#module.exports = (robot) ->   
#  robot.hear /(.*)の天気/i, (msg) ->
#    switch msg.match[1]　
#       when '今日'
#         day = 0
#       when '明日'
#         day = 1
#       when '明後日'
#         day = 2
#       else
#         day = 3
#         break
#        
#    request = msg.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=270000').get()
#    request (err, res, body) ->
#      json = JSON.parse body
#      if day == 3
#        msg.send "ごめんね、" + msg.match[1] + "の天気はよくわからないのです。。"
#      else
#        msg.send "トゥットゥルー♪ 今日の天気は" + json['forecasts'][day]['telop'] + "なのです！"
        
#    request = msg.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=270000')
#    .get()
#    request (err, res, body) ->
#      json = JSON.parse body
#      if day == 3 
#      msg.send "ごめんね、" + msg.match[1] + "の天気はよくわからないのです。。"
#    else
#       msg.send "トゥットゥルー♪ 今日の天気は" + json['forecasts'][day]['telop'] + "なのです！"