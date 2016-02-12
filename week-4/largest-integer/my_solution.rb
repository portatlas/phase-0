# Largest Integer

# I worked on this challenge  myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

list_of_nums = [5,7,4,75]


def largest_integer(list_of_nums)
  # Your code goes here!
  sorted_large2small = list_of_nums.sort { |x,y| y <=> x }
    p sorted_large2small[0]
end

largest_integer(list_of_nums)