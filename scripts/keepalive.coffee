# Description:
#   
#
# Dependencies:
#   "node-cron": "~1.0.3"
#
# Configuration:
#   HUBOT_URL
#
# Author:
#   tenten0213

cron = require('cron').CronJob
module.exports = (robot) ->
  url = process.env.HUBOT_URL
  robot.enter ->
  new cron
    cronTime: "*/10 * * * *"
    start: true
    onTick: ->
      robot.http(url + "/hubot/version")
        .get() (err, res, body) ->
          return
