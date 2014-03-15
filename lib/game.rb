class Game

	attr_accessor :score

	def initialize
		@score = 0
		@game_frame = 1
		@score_frame = 1
	end

	def play (player)
		until end? (10) do
			player.turn @game_frame
			@game_frame += 1
		end
	end

	def end? gamelength
		@game_frame > gamelength
	end

	def score balls
		if @score_frame == 10
		 	return balls.inject(:+)
		else
			if balls[0] == 10
				strike = balls.slice(0, 3)
				@score_frame += 1
				return strike.inject(:+) + score(balls.slice(1, (balls.length - 1)))
			elsif balls[0] + balls[1] == 10
				spare = balls.slice(0, 3)
				@score_frame += 1
				return spare.inject(:+) + score(balls.slice(2, (balls.length - 2)))
			else
				frame_score = balls.slice(0, 2)
				@score_frame += 1
				return frame_score.inject(:+) + score(balls.slice(2, (balls.length  - 2)))
			end
		end
	end
end