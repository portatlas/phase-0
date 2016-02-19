# Numbers to Commas Solo Challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) a string with an integer seperated by commas
# What are the steps needed to solve the problem?
# 1. Take the integer and convert it into a string
# 2. Determine how many characters are in the string
# 3. Splice the last three characters and add an , infront, iterate until there are no characters left


# 1. Initial Solution

def separate_comma(num)
  num_array = num.to_s.reverse.split('')
  number_of_comma = num_array.size/3
  comma_need = num_array.size.to_i
  p comma_need
  if comma_need < 4
    p num.to_s
  elsif comma_need == 6
    p num.to_s.insert(3,',')
  else comma_need > 6
    n = 3
    number_of_comma.times do |x|
      num_array.insert(n, ',')
      n += 4
    end
    p num_array
    num_test = num_array.join("")
    p num_test.reverse
  end
end

# 2. Refactored Solution

def separate_comma(num)
  num_array = num.to_s.reverse.split('')
  comma_number = num_array.each_slice(3).map(&:join).join(',')
  p comma_number.reverse
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# When breaking the problem down I was considering what data structure to use. What was the logic in adding the commas. This took a bit of trial and error to figure out.

# Was your pseudocode effective in helping you build a successful initial solution?
# My initial approach to the psuedocode was in a different direction from what was actually implemented. I had an idea of how I would approach the problem as a person, but once it came to figuring out how Ruby would do it and the methods I knew the solution was different.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#The new methods I learned from refactoring is the each_slice, the map(&:join) methods.  Each slice was a much more effective way of going through and figuring out where the commas needed to be. In my initial solution I used insert which worked but was not as elegant. Additionally, the refactored solution used map function to insert the comma. This was also another major improvement to the intial solution I came up with.  The structure of the code changed significantly. The first structure was a case based structure where as the refactored solution was much more efficient.

# How did you initially iterate through the data structure?
# Initially I was try to iterate through the data structure backwards, this made it difficult, so I decided to reverse the array and iterate through the array. This made it a lot easier to work throught the problem.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# The initial solution I created was a really long way of solving the problem. I was using the methods I knew at the time to solve the problem. HOowever, after doing some research I encountered a way to solve this problem more effectivly. Although, I did not refactor the entire solution to the final output I was able to get an understanding of another way to solve the problem.