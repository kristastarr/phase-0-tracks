## Create a game
# One user can enter a word and another user attempts to guess the word.
## make a Game class
## It will take a string which is the secret word (readable and writable)
## Then it will take a series or strngs (letters) which will be the guesses (readable and writable)
## Needs to include a method to see if the guessed letter is in the secret word string

## Need to limit the number of turns in relation to the length of the secret word 
## Create a turn counter variable which is related to secret_word_array.length (not needed outside of class)
## After every guess, decrease the counter variable by one 

## Unless the letter guessed has already been guessed- then the counter variable stays the same!
## So, need to create an array to push the guessed letters to (not needed outside class)
## and create a method that will check after each guess to see if guess is in the guessed letter array, 
## if no, counter += 1

## Give user feedback after every turn- 
## Start by displaying an array with "_" equal to secret_word.length (readable)
## After every guess, if secret_word contains guessed_letter, update display_word
## Find a method that will replace an item of an array with a specified value
## Use that method to replace the _ in display_word at secret_word[i] with the guessed_letter (use .fill)

## Create driver code to get user input for secret word and guesses 
## If secret_word does not equal display_word, the game continues  (use .eql?)
## If display_word does not contain "_" (win) OR if counter = 0 (lose), the game ends
## If secret_word === display word before counter = 0, then print a congratulatory message
## Otherwise, print a taunting message 

class Game

attr_accessor :guess,  :secret_word
attr_reader :turns, :guess_status, :display_word, :guessed_letters  

  def initialize(secret_word)
    @secret_word =  secret_word
  	@secret_word_arr = @secret_word.split(//)
  	@guess = "guess"
  	@guessed_letters = []
  	@guess_status = ""
  	@turns = @secret_word.length + 2 
	@alphabet = "abcdefghijklmnopqrstuvwxyz"
  	@index_counter = 0
  	@secret_word_index_arr = []
  	@display_word = ""
  	secret_word.length.times do 
  		@display_word << "_" 
  		end 
  end

  def check_secret_word(guess)

  		if @alphabet.include?(guess)  == false 
  			@guess_status = "invalid" 
  		
  		elsif @guessed_letters.include?(guess)
  			@guess_status = "repeat"

  		elsif @secret_word_arr.include?(guess)
  			@guessed_letters << guess
  			@turns -=1 
  			@guess_status = "yes" 
  			update_display_word(guess)	

  		else @guessed_letters << guess
  			@turns -=1 	
  			@guess_status = "no"
  
  		end 
  end 

  def update_display_word(guess)
  		@secret_word_arr.each do |i|
 		 	if i == guess
 		 		@secret_word_index_arr << @index_counter
  			end
  		@index_counter +=1
		end  

		@secret_word_index_arr.each do |i|
  			@display_word[i] = guess
		end  

		@secret_word_index_arr.clear 
		@index_counter = 0
		return display_word
  	end 	
	
end 

## User Interface 

puts "Welcome to the Word Guessing Game!"
puts "Player 1, enter a word to guess"
word = gets.chomp 

game = Game.new(word)

puts "Player 2, get ready to guess the word!"
p game.display_word.split(//).join(" ") 
 	
while game.turns > 0 

	puts "Player 2, guess a letter!"
	letter = gets.chomp
			
	game.check_secret_word(letter)
	
	case 
		when game.secret_word.eql?(game.display_word)
			p game.display_word.split(//).join(" ") 	
			puts "Congratulations!!! You guessed the word!"
			break

		when game.guess_status == "invalid"
			puts "That's not a letter! Try again!"
			p game.display_word.split(//).join(" ")
			puts "You have #{game.turns} guesses left"
			
		when game.guess_status == "repeat"
			puts "You already guessed that!"
			puts "Here are the letters you already tried:"
			p game.guessed_letters
			p game.display_word.split(//).join(" ")
			puts "You have #{game.turns} guesses left"
			
		when game.guess_status == "no"
			puts "That letter is not in the word!"
			p game.display_word.split(//).join(" ")
			puts "You have #{game.turns} guesses left"
		
		else 
			puts "Good guess!" 
			p game.display_word.split(//).join(" ")
			puts "You have #{game.turns} guesses left"	
		end 

		puts "_________________________________________"
	
		if game.turns == 0
		puts "You didn't guess the word... Better luck next time!"
		end 	
end 	 	
 
