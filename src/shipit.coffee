# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Author:
#   maddox

squirrels = [
  "https://i.imgur.com/RLQpXfX.png",
  "https://i.imgur.com/sA1h34D.jpg",
  "https://i.imgur.com/DEnnA6m.jpg",
  "https://i.imgur.com/oHJIlXI.jpg",
  "https://i.imgur.com/DPVM1.png",
  "https://i.imgur.com/BVpkdrU.jpg",
  "https://i.imgur.com/NSanWiX.jpg",
  "https://i.imgur.com/TEVqIZQ.jpg",
  "https://i.imgur.com/mUuDkyK.jpg",
  "https://i.imgur.com/ERCNrhd.jpg",
  "https://i.imgur.com/nxMZSJi.png"
  ,"https://i.imgur.com/Llnt0w8.jpg"
  ,"https://i.imgur.com/bhgcEVa.jpg"
  ,"https://i.imgur.com/EjCZu7Q.jpg"
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
