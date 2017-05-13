
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

	if lying == false && (garlic == true && immortal == false) 
		result = "Probably not a vampire"

	elsif lying == true && (garlic == false && immortal == true)
		result = "Probably a vampire"

	elsif lying == true && (garlic == false && immortal == true)
		result = "Almost certainly a vampire"

	elsif name == "Drake Cula" || "Tu Fang"
		result = "Definitely a vampire"

	else result =
	 "results inconclusive"	
	end 

puts "The result is: #{result}"

x += 1

end 

