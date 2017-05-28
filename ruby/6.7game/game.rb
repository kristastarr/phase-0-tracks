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
## Use that method to replace the _ in display_word at secret_word[i] with the guessed_letter

## If display_word does not contain "_" OR if counter = 0, the game ends
## If secret_word === display word before counter = 0, then print a congratulatory message
## Otherwise, print a taunting message 