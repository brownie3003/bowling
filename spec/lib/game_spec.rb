require 'spec_helper'
require 'game'

describe Game do
	let(:game) {Game.new}
	
	describe "Instantiate Game" do
		it "is instantiated correctly" do
			expect(game).to be_instance_of(Game)
		end
	end

	describe "scoring" do
		it "should be a gutter game" do
			expect(game.score([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])).to eq(0)
		end
		it "should be a perfect game" do
			expect(game.score([10,10,10,10,10,10,10,10,10,10,10,10])).to eq(300)
		end
	end
end