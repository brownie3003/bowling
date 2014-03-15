class Player

	def initialize name
		@name = name
		@frames = []
		@spare = false
		@strike = false
	end

	def name
		@name
	end

	def frames
		@frames
	end

	def turn frame
		score = Array.new
		ball_counter = 1
		until score.inject(:+) == 10 || ball_counter == 3
			puts "Player #{@name}: Enter the number of pins knocked down on ball #{ball_counter}:"
			pins = gets.chomp.to_i
			ball_counter += 1
			score << pins
			@frames << pins
			# strike in final frame
			if frame == 10 && score == [10]
				puts "You bowled a strike, you have two bonus balls"
				puts "Ball 1 score:"
				pins = gets.chomp.to_i
				@frames << pins
				puts "Ball 2 score:"
				pins = gets.chomp.to_i
				@frames << pins
				break
			end
			# spare in final frame
			if frame == 10 && score.inject(:+) == 10
				puts "You bowled a spare, you have one bonus balls"
				puts "Ball score:"
				pins = gets.chomp.to_i
				@frames << pins
				break
			end
		end
	end
end