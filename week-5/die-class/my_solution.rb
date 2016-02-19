# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# 0. Pseudocode

# Input: the input is the number of sides that die should have
# Output: the output is the random number when the die is rolled
# Steps:
# 1. Define what will happen when the die class is started
# 2. Throw an wrror message if the side is less than 0
# 3. Define how many sides the die will have
#4. Output the number when the die is rolled


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if sides <= 0
#       raise ArgumentError.new("Only a number from 1 to 6")
#     end
#     roll
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     p 1 + rand(@sides)
#   end
# end

# d = Die.new(10)
# test drive solution




# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides <= 0
      raise ArgumentError.new("Only a number from 1 to 6")
    end
    roll
  end

  def sides
    p @sides
  end

  def roll
    p 1 + rand(@sides)
  end
end




# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError allows us to throw an error if the conditions are outside of
what we had expected for the program. This might make it easier to troubleshoot
issues or notify the user that they made an error.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
The new ruby method I implemented was the rand method and the raise ArgumentError.
I followed the documentation and what I wanted it to do was fairly basic so there were
not that many challenges. The challenge was wrapping my head around the class. It
seemed like a new way of thinking about programming.


What is a Ruby class?
A Ruby class is a masterplan of the object, it allows objects to be created to have the same behaviors of the parent class.

Why would you use a Ruby class?
I would use a Ruby class if I wanted to define new objects that behaved a certain way. This
gives me flexibility in the way I design my objects.

What is the difference between a local variable and an instance variable?
The maine difference is the scope that the variable can be accessed and used. A local variable
is only accesible in the scope of the method that it was defined. An instance variable can be accessed anywhere in the class that is defined.

Where can an instance variable be used?
An instance variable can be used in the class that is defined.
=end