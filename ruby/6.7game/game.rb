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

attr_accessor :guess, :turns, :secret_word
attr_reader :guess_status, :display_word 

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
  		
  		elsif 
  			@guessed_letters.include?(guess)
  			@guess_status = "repeat"

  		elsif 
  			@secret_word_arr.include?(guess)
  			@guessed_letters << guess
  			@turns -=1 
  			@guess_status = "yes" 
  			update_display_word(guess)	

  		else 
  			@guessed_letters << guess
  			@turns -=1 	
  			@guess_status = "no"
  			update_display_word(guess)
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
  	end 	
	
end 

## User Interface 

puts "Player 1, enter a word to guess"
word = gets.chomp 
# need to find a way to not show the word in the teriminal once it is entered !!!!

game = Game.new(word)
# # # # add code to stop the loop if the word is guessed 
# # # #break if secret_word === @reveal_word
# # # #puts "Congratulations! You guessed it!"
# # # #else 
while game.display_word !== game.secret_word 

	until game.turns == 0 

		puts "Player 2, guess a letter!"
		letter = gets.chomp
			
		game.check_secret_word(letter)
		p game.guess_status # use if statement here to print different message based on guess status 
		p game.display_word  
		puts "You have #{game.turns} guesses left"
	 end 
end

puts "You didn't guess it! Try again..."
	 	

