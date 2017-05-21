
# Create a method that changes someone's real name into an alias
# input = real name (string)
# output = alias (string)

# get user input: first name and last name, and enter each through a method that will:
# make all letters of the string lowercase
# split the string into characters
#then go through each character and change the character as follows:
#determine if the character is a vowel.
# if the character is a vowel,
#match it to the vowel in an array of vowels (see what index)
#using the index, change the vowel at the next index in the array of vowels
# push that vowel to the alias
# if the character is a space or any other character, push a space to the new name variable (a string)
#if the character is a consonant, push the letter after the consonant to the new name variable (a string)

# create a variable alias which will consist of the new last name + " " + the new first name
#push the alias to a hash for later printing (variable)
# also create a variable of full name which will consist of the old first name +  " " + old last name and push that to the hash (key)

#use a loop ask the user if they want to do it again
#if yes, rerun the method with the new names
# if no, exit the loop
# when the user is done entering names, print the hash containing the new and old names using .each and interpolation of the real name and fake name


def alias_creator(name1, name2)
    
    def word_modifier(name)
        vowels = "aeiou"
        consonants = "bcdfghjklmnpqrstvwxyz"
        modified_name = ""
        new_alias = ""
        
        splitname = name.downcase.split('')
        
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
            
            modified_name.capitalize!
        end
        return modified_name
        
    end
    
    new_alias = word_modifier(name1) + " " + word_modifier(name2)
    return new_alias
end

alias_hash = {}

loop do
    puts "Enter a first name or enter done to exit"
    first_name = gets.chomp
    if first_name == "done"
        break
        else puts "Enter a last name"
        last_name = gets.chomp
        full_name = first_name + " " + last_name
        alias_hash[full_name] = alias_creator(first_name, last_name)
    end     
end    

alias_hash.each do |real, fake|
    p "#{fake} is really #{real}!"
end 
