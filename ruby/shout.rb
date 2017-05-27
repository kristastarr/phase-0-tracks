
# Write a Simple Module
#module Shout
	#def self.yell_angrily(words)
		#words + "!!!" + " :("
	#end 

	#def self.yelling_happily(words)
		#"OMG " + words + "!!!"
	#end 	 
#end 

#p Shout.yell_angrily('Who took the last donut??')
#p Shout.yelling_happily('kittens')

#Convert a Standalone Module to a Mixin 

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end 	

	def yelling_happily(words)
		"OMG " + words + "!!!"
	end 
end 		

class Cheerleader 
	include Shout
	end 

class Toddler
	include Shout
end 

cheerleader = Cheerleader.new
p cheerleader.yelling_happily("Go Team Go")

toddler = Toddler.new
p toddler.yell_angrily("Mine")
