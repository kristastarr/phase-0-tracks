#Begin with a loop
#First get the user's first and last name
#Swap the order of the names by creating a new variable and making it a string which contains the last name, then a space, then the first name
#Split the string into an array of characters
#Change all the characters in the array to lowercase

#Declare an empty array to hold the letters of the new alias
#iterate through the characters in the array
#determine if the character is a vowel.
# if the character is a vowel,
#match it to the vowel in an array of vowels (see what index)
#using the index, change the vowel at the next index in the array of vowels
# push that vowel to the alias
# if the character is a space, push a space to the alias
#if the character is a consonant, push the letter after the consonant to the alias
#join the characters back into a string

# print the string along with a message "Your alias is... "
# ask the user if they want to do it again
#  if yes, return to the beginning
# if no, exit the loop

#def alias
puts "What is your first name?"
firstname = gets.chomp
puts "What is your last name?"
lastname = gets.chomp
fullname = lastname + " " + firstname

splitname = fullname.downcase.split('')
splitname.map! { |letter| letter.next }

p splitname.join



#puts "Your spy alias is #{alias}"
#puts "Do you want to generate another spy name?"


#end

#def next_vowel
