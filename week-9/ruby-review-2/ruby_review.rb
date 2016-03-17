# I worked on this challenge with Andrew Crowley.
# This challenge took me 1 hour.


# Pseudocode
# input: array of integers
# output: Array where 3 is replaced with fizz, 5 is replaced with buzz, and 15 is replaced with fizzbuzz
# iterate through the array of integers and identify whether that specific element is either multiple of 3, 5, or 15
# IF so we want to replace that number with the respective "string"
# ELSE it is not a multiple of 3, 5, 15 then return the same number
# it returns the "fizzbuzz" aray


# Initial Solution


# def super_fizzbuzz(array)
#   array.map! do |x|
#     if x%3 == 0
#       x = "Fizz"
#     else x%3 == 0 || x%5 == 0 || x%15 == 0
#       p x
#     end
#   end
# p array
# end

# Refactored Solution


test_array = [15, 5, 3, 1]

def super_fizzbuzz(array)
  array.map! do |x|
    if x%15 == 0
      x = "FizzBuzz"
    elsif x%5 == 0
      x = "Buzz"
    elsif x%3 == 0
      x = "Fizz"
    else x%3 == 0 || x%5 == 0 || x%15 == 0
      p x
    end
  end

end

super_fizzbuzz(test_array)




# Reflection
# What concepts did you review in this challenge?
# I reviewed the flow control for ruby and the destructive and non-destructive methods.

# What is still confusing to you about Ruby?
# Sometimes I need to go through iteration of array a few times to finally implment something correctly.

# What are you going to study to get more prepared for Phase 1?
#  I am going to review Ruby syntax to ensure so I don't have to look at reference documentation as much.