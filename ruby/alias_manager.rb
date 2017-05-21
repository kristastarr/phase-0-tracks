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


def alias_creator(name1, name2)
    
    def word_modifier(name)
        vowels = "aeiou"
        consonants = "bcdfghjklmnpqrstvwxyz"
        modified_name = ""
        new_alias = ""
        
        # run on each word:
        splitname = name.downcase.split('')
        
        # run on each letter:
        splitname.map! do |x|
            
            if x === "u"
                modified_name << "a"
                
                elsif vowels.include? x
                new_vowel_index = vowels.rindex(x) + 1
                modified_name << vowels[new_vowel_index]
                
                elsif x === "z"
                modified_name << "a"
                
                elsif consonants.include? x
                new_consonant_index = consonants.rindex(x) + 1
                modified_name << consonants[new_consonant_index]
                
                else
                modified_name << " "
            end
            # end of run on each letter
            modified_name.capitalize!
        end
        p modified_name
        
    end
    #end of run on each word
    
    new_alias = word_modifier(name1) + " " + word_modifier(name2)
    p new_alias
    
end

#calling the method, pushing return value to an array

# alias_array = [ ]
# alias_array.push  alias_creator("Felicia", "Torres")
# p alias_array
# alias_array.push alias_creator("Krista", "Starr")
# p alias_array

alias_array = []
loop do
    puts "Enter your first name or enter done to exit"
    first_name = gets.chomp
    if first_name == "done"
        break
        else puts "Enter your last name"
        last_name = gets.chomp
        alias_array.push alias_creator(first_name, last_name)
        p alias_array 
    end     
end         


