## Create a game
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

  def initialize(secret_word)
    @secret_word =  secret_word
  	@secret_word_arr = @secret_word.split(//)
  	@turns = secret_word.length
  	@guess = "guess"
  	@guessed_letters = [] 
  	@display_word = []
  	secret_word.length.times do 
  		@display_word << "_" 
  		end 
	@reveal_word = @display_word.join 

  end

  def check_secret_word(guess)
  		@alphabet = "abcdefghijklmnopqrstuvwxyz"

  		if !@alphabet.include?(guess)  
  			puts "That's not a letter! Guess again!"
  	
  		elsif 
  			@guessed_letters.include?(guess)
  			p @guessed_letters 
  			p @turns
  			puts "You already guessed that! Enter another guess."

  		elsif 
  			@secret_word_arr.include?(guess)
  			@guessed_letters << guess
  			p @guessed_letters 
  			@turns -=1 
  			p @turns
  			puts "Yes!"
  			#run print result function
  		else 
  			@guessed_letters << guess
  			p @guessed_letters 
  			@turns -=1 
  			p @turns 
  			puts "No, not in the word"	
  			#run print result function
  		end 
  	end 

	def play_game 
		# if secret_word === @reveal_word
			#puts "Congratulations! You guessed it!"
			# break
		# else 	
			until @turns == 0 
			puts "Player 2, guess a letter!"
			letter = gets.chomp
			check_secret_word(letter)
			end
			puts "You didn't guess it! Try again..."
			## 

		end 	


	def update_reveal_word(guess) 
		#find what index the guess is in the secret word string
		secret_word_index = secret_word.rindex(guess)

		#change that index in the reveal word to the the letter 
		reveal_word.replace(reveal_word[secret_word_index], guess)
		
	end 	

end 


puts "Player 1, enter a word to guess"
word = gets.chomp 
game = Game.new(word)
game.play_game 


