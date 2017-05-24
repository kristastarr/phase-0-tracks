class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times do puts "Woof!"
  	end 
  end

  def rolls_over
  	puts "Rolls over!"
  end 	

end

cookie = Puppy.new

#cookie.fetch("ball")
#cookie.speak(5)
cookie.rolls_over



	