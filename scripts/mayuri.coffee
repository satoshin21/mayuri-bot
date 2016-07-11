# Description:
#   まゆしぃbot
#
# Commands:
#   :mayuri / @mayuri - ランダム

random_message = [
    "トゥットゥルー♪　まゆしぃです",
    "おかりーん！",
    "でもまゆしぃはおかりんの人質なので〜",
    "ゲルバナはデロデロでプニュプニュだったよ",
]

module.exports = (robot) ->
    robot.hear /:mayuri|@mayuri/, (msg) ->
        msg.send msg.random random_message
    
    robot.hear /とぅっとぅるー|トゥットゥルー/i, (msg) ->
        msg.send msg.random [
            "トゥットゥルー♪　まゆしぃです",
            "トゥットゥルー♪",
            
        ]
        
    robot.hear /鳳凰院|凶真/i, (msg) -> 
    	msg.send msg.random [
    		"おかりんの方が可愛いのに〜",
    	]
    
    robot.hear /タイムマシン/i, (msg) ->
        msg.send msg.random [
            "タイムマシン！凄いね〜",
        ]

    robot.hear /.*おはよう.*/i, (msg) ->
        msg.send msg.random [
            "トゥットゥルー♪",
        ]

    robot.hear /ドクペ|ドクター.*ペッパー/i, (msg) ->
        msg.send msg.random [
            "本当にドクペが好きだよね〜",
        ]


