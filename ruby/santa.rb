
class Santa 

	def initialize(gender, ethnicity) 
		"Initializing Santa instance..."
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet",
			"Cupid", "Donner", "Blitzen"]	
		@age = 0 		
	end 

	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end 
	
	#method to age santa by one year 
	def celebrate_birthday
		@age = @age + 1
		p @age 
	end 	

	#take reindeer name as argument and move that reindeer in last place in the reindeer ranking]
	def get_mad_at(reindeer_name) 
		rank = @reindeer_ranking.index(reindeer_name) 
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(rank))
	 end 

	#setter method that allows gender to be reassigned outside the class definition
	def gender=(new_gender)
		@gender = new_gender
	end 
end 


#----- driver code -----
#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")

santa1 = Santa.new("other", "Korean")

santas = []

santas << Santa.new("nonbinary", "American Indian") 
santas << Santa.new("trans", "White-Latino")
santas << Santa.new("cis male", "Black")


#"Changing the individual Santa's gender"
# santa1.gender = "female"
#p santa1

# Changing the gender of the santa at index 0 in the array of santas"
#santas[0].gender = "androgynous"
#p santas[0]

# Looping through the array of santas and changing each one's gender to transgender female"
#santas.each do | item |
	#item.gender = "transgender female"
#end 	
#p santas 

#p santa1 # prints santa1 array of data
#p santa1.reindeer_ranking # prints santa1 array of reindeer  
#p santa1.reindeer_ranking[0] # prints the reindeer at index 0 of the array of reindeer 

p santa1.get_mad_at("Comet")
