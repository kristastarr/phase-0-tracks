module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end 

	def self.yelling_happily(words)
		"OMG " + words + "!!!"
	end 	 
end 

p Shout.yell_angrily('Who took the last donut??')
p Shout.yelling_happily('kittens')