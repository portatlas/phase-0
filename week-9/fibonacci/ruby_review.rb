# I worked on this challenge by myself.
# This challenge took me 1.5 hours.

# Pseudocode
# evaluate whether the number is a fibonacci with the test


# Initial Solution


# def is_square?(num)
#   p Math.sqrt(num).to_i == Math.sqrt(num)
#   # p Math.sqrt(num).to_i
#   # p Math.sqrt(num) % 1 == 0
# end


# Refactored Solution

require 'bigdecimal'

def is_fibonacci?(number)
  num = BigDecimal.new(number)
  test1 = ((5 * (num * num)) + 4).sqrt(0)
  test2 = ((5 * (num * num)) - 4).sqrt(0)
  return (test1 == test1.to_i || test2 == test2.to_i)
end


# Reflection
# What concepts did you review in this challenge?
# In this challenge I revied the or statements and a few new math methods.

# What is still confusing to you about Ruby?
# I initially had some difficulties working with large numbers and
# evaluating whether they had any decimal places.

# What are you going to study to get more prepared for Phase 1?
# I will have to review all the introductions to Ruby and JavaScript syntax.