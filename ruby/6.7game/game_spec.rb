
require_relative 'game'

describe Game do 
	

let(:game) { Game.new("surprise") }

	it "checks to see if user 2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("u")
		expect(game.guess_status).to eq "yes"
	end 

	it "checks to see if user 2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("x")
		expect(game.guess_status).to eq "no"
	end 

	it "checks to see if user 2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("2")
		expect(game.guess_status).to eq "invalid"
	end 
	
	it "checks to see if user 2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("s")
	 	game.check_secret_word("s")
		expect(game.guess_status).to eq "repeat"
	end 
		
  end
	
