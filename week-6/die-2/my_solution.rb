# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: returns one of the strings in the array and an Argument error if the input array is empty
# Steps:
# 1. Define what will happen when the die class is started
# 2. Throw an wrror message if the an empty array is passed
# 3. Define how many sides the die will have
#4. Output the string when the die is rolled


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     @size = labels.size
#     if labels == []
#       raise ArgumentError.new("Please do not pass an empty array as an argument")
#     end
#   end

#   def sides
#     p @size
#   end

#   def roll
#     p @labels.sample
#   end
# end

# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new("Please do not pass an empty array as an argument")
    end
  end

  def sides
    p @labels.size
  end

  def roll
    p @labels.sample
  end
end


# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# No, I did not have to change much of the logic to get it to work. I took a copy of the
# first iteration of the class and make a few line changes to get it to return a "string"
# as opposed to a number.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# This exercise, shows me that if you refactor your code it will be a lot easier to use
# the base code for other objectives. In this case I think I refactored the first iteration # of the class and it made it a lot easier to change the inputs and outputs.


# What new methods did you learn when working on this challenge, if any?
# A new method I learned was the sample method that can be applied to arrays.
# The sample method chooses a random element within the array. If I wanted to specifiy
# how many elements I want I can pass a paramater (n). For example if I wanted 2 strings
# from that array I could do @labels.sample(2).

# What concepts about classes were you able to solidify in this challenge?
# I got a better understanding of how instance variables are used within classes.
