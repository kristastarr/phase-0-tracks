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



new_alias = ""
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

loop do
    puts "Enter your first name or enter done to exit"
    first_name = gets.chomp
    if first_name == "done"
        break
    else puts "Enter your last name"
        last_name = gets.chomp
        
        full_name = last_name + " " + first_name
        
        splitname = full_name.downcase.split('')
        
        splitname.map! do |x|
            
            if x == "u"
                new_alias << "a"
                
            elsif vowels.include? x
                new_vowel_index = vowels.rindex(x) + 1
                new_alias << vowels[new_vowel_index]
                
            elsif x == "z"
                new_alias << "a"
                
            elsif consonants.include? x
                new_consonant_index = consonants.rindex(x) + 1
                new_alias << consonants[new_consonant_index]
                
            else
                new_alias << " "
            end
        end
        
        p "Your spy alias is " + "#{new_alias}" + "!"
        new_alias.clear
    end 
end
