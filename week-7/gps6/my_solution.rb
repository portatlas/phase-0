# Virus Predictor

# I worked on this challenge with Theo Paul.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows one file to make a reference against a seperate file based on the file path
require_relative 'state_data'

class VirusPredictor

# run automatically when and sets the variables state, population and population density. Taking in three parameters and assigns themselves to each of the corresponding variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls two other private methods predicted_deaths and speed_of_spread and also provides corresponding arguments.
  def virus_effects
    predicted_deaths(@population_density)
    speed_of_spread(@population_density)
  end

  private

# A method that takes a parameter, one of which is population.  The code block brances based on whether the population_density is within a given threshold and calcuates the numbers of deaths based on a different multiple.  The value returned is an integer. Prints the values evaluated in the code block as a string.

  def predicted_deaths(population_density)
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

# Takes in two parameters and sets a variable named speed to 0.0. Based on different population threshold a speed rate is calculated. The value evaluated is printed to the screen as a string.
  def speed_of_spread(population_density) #in months
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

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 #psuedocode
# Iterate through the hash STATE_DATA and then access all informatio in each key
# Run the calculation
# Display the results as a full report for all 50 states

  STATE_DATA.each do |key, value|
   VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population]).virus_effects
  end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The state_data file has two inner hashes nested in the
outside hash. The outside hash syntax uses a string as a key,
employs the symbol => and has a value of another hash.

The inner hash has employs a newer way to format hashes.  It
uses symbols but the symbol sigh can come after the text
characters to make it more similar to other formats like JSON
and Python Dictionaries.  Accessing these hashes are still the same with the key and value.

What does require_relative do? How is it different from require?
require_relative means that the current file where require_relative
is called will need to reference another file by the file path.
The difference is that require is loading the name of the file,
whereas, require_relative is loading the string name relative
to the file path.

What are some ways to iterate through a hash?
You can iterate through a hash with each, each_index or map.

When refactoring virus_effects, what stood out to you about the variables, if anything?
One thing that I finally realized after reading through all the comments is that not all variables were needed to be passed
as parameters in the method calls.  To refactor, I just removed
the extraneous parameters.

What concept did you most solidify in this challenge?
I solidify the concept of iterating through nested hashes. To do this,
I just had to look at the data structure differently.


=end