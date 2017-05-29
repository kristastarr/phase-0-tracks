
require_relative 'game'

describe Game do 
	

let(:game) { Game.new("puppy") }

	it "checks to see if user2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("u")
		expect(game.guess_status).to eq "yes"
	end 

	it "checks to see if user2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("x")
		expect(game.guess_status).to eq "no"
	end 
	
	it "checks to see if 2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("2")
		expect(game.guess_status).to eq "invalid"
	end 
	
	it "checks to see if user2's guess is in the secret word, and returns status" do
	 	game.check_secret_word("y")
	 	game.check_secret_word("y")
		expect(game.guess_status).to eq "repeat"
	end 
	
	it "limits the number of guesses based on the length of the word"	do 
		expect(game.turns).to eq 7
	end 	

	it "limits the number of guesses based on the length of the word"	do 
		game.check_secret_word("u")
		expect(game.turns).to eq 6
	end

	it "limits the number of guesses based on the length of the word"	do 
		game.check_secret_word("x")
		expect(game.turns).to eq 6
	end

	it "limits the number of guesses based on the length of the word"	do 
		game.check_secret_word("y")
		game.check_secret_word("y")
		expect(game.turns).to eq 6
	end

	it "limits the number of guesses based on the length of the word"	do 
		game.check_secret_word("2")
		expect(game.turns).to eq 7
	end

	it "Provides feedback to the user by displaying the updated word with the newly guessed letters included" do
		expect(game.display_word).to eq "_____"
	end 


	it "Provides feedback to the user by displaying the updated word with the newly guessed letters included" do
		game.check_secret_word("u")
		expect(game.display_word).to eq "_u___"
	end

	it "Provides feedback to the user by displaying the updated word with the newly guessed letters included" do
		game.check_secret_word("p")
		expect(game.display_word).to eq "p_pp_"
	end

	it "Provides feedback to the user by displaying the updated word with the newly guessed letters included" do
		game.check_secret_word("x")
		expect(game.display_word).to eq "_____"
	end

	it "Provides feedback to the user by displaying the updated word with the newly guessed letters included" do
		game.check_secret_word("2")
		expect(game.display_word).to eq "_____"
	end

end 	
