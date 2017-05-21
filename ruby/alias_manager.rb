

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
        return modified_name
        
    end
    #end of run on each word
    
    new_alias = word_modifier(name1) + " " + word_modifier(name2)
    return new_alias
    
end

#calling the method, pushing return value to an array

# alias_array = [ ]
# alias_array.push  alias_creator("Felicia", "Torres")
# p alias_array
# alias_array.push alias_creator("Krista", "Starr")
# p alias_array

alias_hash = {}
loop do
    puts "Enter your first name or enter done to exit"
    first_name = gets.chomp
    if first_name == "done"
        break
        else puts "Enter your last name"
        last_name = gets.chomp
        full_name = first_name + " " + last_name
        alias_hash[full_name] = alias_creator(first_name, last_name)
        p " #{alias_hash[full_name]} is really #{full_name}!" 
    end     
end
