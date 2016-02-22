# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: takes in an integer as an input
# Output: if the guess is correct return correct, if the guess is too high return too high, if the guess is too low, return low:
# Steps:
# 1. Determine what is the target number that will be guessed either predetermined or created at random
# 2. Store the input parameter guess as a variable
# 3. Evaluate whether the guess is the same as the target number
# 4. IF yes return :correct
# 5. ELSE if the guess is too large return :high
# 6. ElSE if the guess is too small return :low


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = 10

#   end

#   def guess(guess)
#     @guess = guess
#     if guess == @answer
#       @guess = :correct
#       p @guess
#     elsif guess > @answer
#       @guess = :high
#       p @guess
#     else guess < @answer
#       @guess = :low
#       p @guess
#     end
#   end

#   def solved?
#     if @guess == :correct
#       true
#     else
#       false
#     end
#   end

#   # Make sure you define the other required methods, too
# end



# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer

  end

  def guess(guess)
    @guess = guess
    if guess == @answer
      @guess = :correct
    elsif guess > @answer
      @guess = :high
    else guess < @answer
      @guess = :low
    end
  end

  def solved?
    if @guess == :correct
      true
    else
      false
    end
  end
end

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables defines the attributes of a real world object. Methods represents
# behaviors of that object in the real world.

# When should you use instance variables? What do they do for you?
# Instance variables should be used when declaring a variable in a class that
#could be used in multiple methods in the class. For example, the instance variable
# @answer was initialized but also used in the method guess.  If I did not use an
# instance variable and defined it as a local when it was initialized, the variable # will not be accessible in the guess method.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Control flow can be used when you want the code to run based on certain conditions
# that are predetermined. An example would be with and if/then condition. This was used
# in the guess method where if the guess was correct then the code was to return
# ":correct", if the answer was too high ("elsif), then the code was to return ":high"
# etc. There are also other flow control that could be useful in other situations ie
# while, until, for, case/when etc.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# The code requires us to use symbols because the :symbol is a unique object. If I was
# to use the string, the string "correct" in the guess method and the string in the
# solved? method would be two different strings. This would be important as if the
# GuessingGame was run multiple times there could potentially be issues where the code # is not tracking whether the game has been solved or not due to the differents of the # string "correct". Symbols are beneficial when you need a unique and immutable object.
# Symbols also process faster than strings when used as hash keys.

