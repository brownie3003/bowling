require "./lib/game"
require "./lib/player"

game = Game.new
puts game

player = Player.new ("Andy")
puts player

game.play(player)

puts "The frames are #{player.frames}"
puts "The score is #{game.score player.frames}"