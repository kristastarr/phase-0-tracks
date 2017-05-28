
require_relative 'game'

describe Game do 
	game = Game.new
	it "takes a string and stores it as the secret word" do 
		expect(@secret_word_arr).to eq[["s","u", "r", "p", "r", "i", "s", "e"]]
	end 
		
  end
	

  	# it "Takes a string and stores it as the secret word, then converts the word into an array" do 
  	# 	game = Game.new("surprise")

  	# end 