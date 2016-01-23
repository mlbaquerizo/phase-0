# Virus Predictor

# I worked on this challenge with Aaron Opsahl.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# Uses data from the required file (state_data) which is located in the same folder.
#
require_relative 'state_data'

class VirusPredictor
# Creates a new instance of VirusPredictor that takes 3 arguments state_of_origin, population_density, population, and saves them as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Outputs the result of the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Calculates predicted deaths based on population density and population and returns an integer for number of deaths, prints string with number of deaths
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Calculates speed of spread based on population density as a float and puts a string with the speed
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # if @population_density >= 200
    #   speed = 0.5
    # elsif @population_density >= 150
    #   speed = 1
    # elsif @population_density >= 100
    #   speed = 1.5
    # elsif @population_density >= 50
    #   speed = 2
    # else
    #   speed = 2.5
    # end

    speed = 2.5
    density = 0

    while density < 200
      density += 50
      speed -= 0.5 if @population_density >= density
      speed
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state, data|
#   states = VirusPredictor.new(state, data[:population_density], data[:population])
#   states.virus_effects
# end


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population]) 
alaska.virus_effects





#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in
# the state_data file?
# The outer hash uses arrow notation to assign keys as strings while the inner 
# hashes use symbol notation to assign keys as symbols. Symbols are used here
# because each inner hash uses the same "variable name", so turning that
# variable name into a symbol makes the program more efficient because Ruby
# will not have to evaluate them every time it needs that information. The
# symbols' values are static.

# What does require_relative do? How is it different from require?
# require_relative gets information from another file in the same folder as
# the requiring file. require gets information from another file that could be
# in a different folder. This would mean that require_relative uses data
# directly related to the requiring file while require may use data that can
# be used by many files (not directly related).

# What are some ways to iterate through a hash?
# Hashes can use the .each method and other enumerable methods. Hashes also
# have the .each_key and .each_value methods which iterated through hash keys
# or values, respectively.

# When refactoring virus_effects, what stood out to you about the variables,
# if anything?
# We realized that the variables did not need to be passed into the methods as
# arguments at all, since they were instance variables of the class the method
# belongs to.

# What concept did you most solidify in this challenge?
# In general Classes were more solidified for me. I realized I need more
# practice with classes and how variables are treated and how they can be used
# outside of the class.