# Pad an Array

# I worked on this challenge with Kari Giberson

# I spent 3hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array
# Parameters including the minimum size of the array, optionally, what we want pad
# What is the output? (i.e. What should the code return?)
# Code will return the array, and if the original size is less than the minimum size then the array will include what is padded
# What are the steps needed to solve the problem?
=begin

Evaluate the length of the orignal array and compare it to the min_size given

IF the original array length is less than min_size then the array should be padded with a new array
  IF the optional parameter is provided, then the array should include the parameter as an element of the array

  Find the difference between the array length and the minium size, and we will just add the pad value that number of times

ELSIF the orignal array length is less than or equal to the min_size then return the orignal_array

=end


# 1. Initial Solution


# def pad!(array, min_size, value = nil)
# # destructive
# # Your code here
#   if array.length >= min_size
#     p array
#   elsif min_size == 0
#     p []
#   elsif array.length < min_size
#     pad_size = min_size - array.length
#     until pad_size == 0
#       pad_size -= 1
#       array << value
#     end
#     p array
#   end
# end


# def pad(array, min_size, value = nil)
# # non-destructive
# # Your code here
#   test_array = array.collect{ |x| x }
#   if test_array.length >= min_size
#     p test_array
#   elsif min_size == 0
#     p []
#   elsif array.length < min_size
#     pad_size = min_size - array.length
#     # p test_array
#     pad_array = Array.new
#     until pad_size == 0
#       pad_size -= 1
#       pad_array.push(value)
#       p pad_array
#     end
#     p test_array + pad_array
#   end
# end



# 3. Refactored Solution

def pad!(array, min_size, value = nil)
# destructive
  if array.length >= min_size
    p array
  elsif array.length < min_size
    pad_size = min_size - array.length
    until pad_size == 0
      pad_size -= 1
      array << value
    end
    p array
  end
end

def pad(array, min_size, value = nil)
# non-destructive
  new_array = array.collect{ |x| x }
  if new_array.length >= min_size
    p new_array
  elsif array.length < min_size
    pad_size = min_size - array.length
    until pad_size == 0
      pad_size -= 1
      new_array << value
    end
    p new_array
  end
end




# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
We were able to break the psuedocode into smaller issues. However, it was harder for us to break down the issues into smaller peices when it came to the code aspects. Looking back we could have psudeocoded in more detail.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Our pseudocode was easy to translate as we had the branches that convert easily. However, there were blocks of code that we did not account for in our psuedocode.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Initially, our solution only passed two test. We had to make multiple refinements to the test to get it to work. We finished the destructive approach quickly, but we struggled with the non-destructive approach.  There was a lot of experimenting and researching required to resolve the issue.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We found the methods prior to refactoring, however, we found a few lines of redundant code that we were able to remove.

How readable is your solution? Did you and your pair choose descriptive variable names?
We feel like the solution is readable. We had to change the variable names a few times for it to make more sense.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods is a method that will change the object the method is being called on. Non-destructive method is a method that does not change the object when the method is called.

=end