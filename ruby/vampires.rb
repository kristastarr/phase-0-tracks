
puts "How many employees do you want to process?"

number = gets.to_i

x = 0

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

  	loop do 
      puts "Please enter any allergies and enter done when finished"
      allergy = gets.chomp
       if allergy == "done"
       	break
      end
     end 
    

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
  	else is_immortal = false
  	end 

  	if allergy == "sunshine"
        result = "Probably a vampire."
  	
  	if is_lying == false && (likes_garlic == true && is_immortal == false) 
  		result = "Probably not a vampire."
  		
  	if (is_lying == true && likes_garlic == true) || (is_lying == true && is_immortal == false)
  		result = "Probably a vampire."

  	if name == "Drake Cula" || "Tu Fang"
      result = "Definitely a vampire."

  	if result =
  	 "Results inconclusive"	

    puts "The result is: #{result}"
	
	  x += 1 
	end 	

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."




  
