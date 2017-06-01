# Virus Predictor

# I worked on this challenge with: Joe Alfaro.
# We spent 1 hour on this challenge and I spent an additional 20minutes doing the reflection.

# EXPLANATION OF require_relative
# require_relative is the same as copy and pasting code from a file in the same directory.
# require vs require_relative require is used when a path to the file is started outside of the current directory

require_relative 'state_data'

class VirusPredictor

# The initialize method takes three arguments and puts them into instance attributes. Is run every time a new instance is created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#  private

# Runs two other methods.
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

# Takes three arguments and uses one to compare to integers in an if statement. uses other for calculation of new variable. and uses third for a name in the string.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
  end

# Takes two arguments uses first in if statement to calculate new variable. uses second as name in string.
  def speed_of_spread
   #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# iterate through the hash
STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, value[:population_density], value[:population])
  state.print_method
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The outer hash, STATE_DATA, uses a hash rocket to assign the variable to the key.  
  # The inner hashes (one for each state/key) utilize a symbol for the key rahtner than the hash rocket

# What does require_relative do? How is it different from require?
# Require_relative links a file and specifies the pathway in relation to the current file you are working in,
# while require links a file and specifies the absolute pathway 

# What are some ways to iterate through a hash?
# You could use .each or .map 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I did not notice it at first but before we refactored them, the method was requiring that variables be passed in
# We realized that we did not need to pass in variables becauese all the variables utilized within the method 
# are actually attributes that are accessible throughout all the methods in the class, 
# so we were able to refactor the code so that the methods no longer required any arguemnts 

# What concept did you most solidify in this challenge?
# The concept of private was new to me so I enjoyed learning about that.  
# Also my temptation was to combine methods to make the code more concise but
# my guide solidified the importance of creating methods that only have one function
# so that they can be used separately if need be, and so that it's easier to de-bug if there's an issue
