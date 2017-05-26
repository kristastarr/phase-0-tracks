
class Santa 

	attr_reader :age, :ethnicity  
	attr_accessor :gender 

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
	#def gender=(new_gender)
		#@gender = new_gender
	#end 

end 


#----- driver code -----
#Testing methods 
#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")

#Creating instances of the Santa class 
santa1 = Santa.new("other", "Korean")

santas = []

santas << Santa.new("nonbinary", "American Indian") 
santas << Santa.new("trans", "White-Latino")
santas << Santa.new("cis male", "Black")

#Testing the setter method on one instance and an array of instances 
#Changing the individual Santa's gender
# santa1.gender = "female"
#p santa1

#Changing the gender of the santa at index 0 in the array of santas
#santas[0].gender = "androgynous"
#p santas[0]

#Looping through the array of santas and changing each ones gender 
#santas.each do | item |
	#item.gender = "transgender female"
#end 	
#p santas 

#Testing methods 
#p santa1.get_mad_at("Comet")

#Testing attr_reader and attr_accessor 
p santa1.age
p santa1.ethnicity 
p santa1.gender
p santa1.gender = "gender questioning"
puts "Gender has been updated to: #{santa1.gender}"


