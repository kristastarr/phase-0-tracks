
puts "How many employees do you want to process?"

number = gets.to_i

x = 0
result = ""
sunshine_allergy = ""

while x < number 

    puts "What is your name?"
    name = gets.chomp
  
    puts "How old are you?"
    age = gets.to_i
  
    puts "What year were you born?"
    birth_year = gets.to_i
    
    puts "Our company cafeteria serves garlic bread.  Should we order some for you? (enter yes or no)"
    bread = gets.chomp
  
    puts "Would you like to enroll in the company's health insurance plan? (enter yes or no)"
    insurance = gets.chomp  
  
    if age == (2017 - birth_year)
      is_lying = false
    else
      is_lying = true
    end
  
    if bread == "yes"
      likes_garlic = true
    else 
      likes_garlic = false
    end 
  
    if insurance == "no" 
      is_immortal = true
    else 
      is_immortal = false
    end   
    
     loop do 
        puts "Please enter any allergies and enter done when finished"
        input = gets.chomp 
          if input == "sunshine" 
            sunshine_allergy = true
          else input == "done"
            break 
          end 
        end  
    
    case 
      when sunshine_allergy == true
        result = "Probably a vampire."
    
      when name == "Drake Cula" || name == "Tu Fang"
        result = "Definitely a vampire."
        
      when is_lying == false && (likes_garlic == true && is_immortal == false) 
        result = "Probably not a vampire."
  
      when is_lying == true && likes_garlic == false && is_immortal == true
        result = "Almost certainly a vampire." 
          
      when (is_lying == true && likes_garlic == false) || (is_lying == true && is_immortal == true)
        result = "Probably a vampire." 
    
      else result =
      "Results inconclusive"    
    end  

    puts "The result is: #{result}"
    
    x += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

  
