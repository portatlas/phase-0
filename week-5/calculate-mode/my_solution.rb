# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Andrew ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of strings or numbers.
# What is the output? (i.e. What should the code return?) Return an array of the most frequent values.
# What are the steps needed to solve the problem?
=begin

Evaluate the count of the same elements in an array
Compare the amount of same elements and determine the element with the highest frequency
Place highest same elements in array and display array.

=end

# 1. Initial Solution

# array = [4, 4, 5, 5, 6, 6, 6, 7, 5]
# [1,1,2,2]


# def mode(array)
#     if array.count == array.uniq
#         p array
#     elsif
#         count = Hash.new(0)
#         array.each do |x|
#         count[x] += 1
#         end
#         max = count.values.max
#         a = count.select{|key,value| value == max}
#         mode_array = Array.new
#         a.each{|key,value| mode_array << key}
#         p mode_array
#     end
#     # p count
# end

# mode(array)

# 3. Refactored Solution

def mode(array)
    if array.count == array.uniq
        p array
    elsif
        count_instances = Hash.new(0)
        array.each do |x|
        count_instances[x] += 1
        end
        max_count = count_instances.values.max
        key_value_array = count_instances.select{|key,value| value == max_count}
        mode_array = Array.new
        key_value_array.each{|key,value| mode_array << key}
        p mode_array
    end
end

# mode(array)




# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# In the beginning we decided that using a hash would be easy as it would allow us to store the number as a key and the count of the number as a value. However, once we got into the assignment we realized that we needed to have the input come in as an array manipulate the data in to a hash and output it back into another array.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yes we made a little bit more progress with psuedocode; however, I think if we had a better grasp of the technical details required we might have been able to break it down even further. I am not sure if breaking it down further would be helpful, but it would be nice to know the implications of our approach earlier in the process.

# What issues/successes did you run into when translating your pseudocode to code?
#The main issues we faced was how we were going to manipulate the array into a hash and take the details in a hash and output an array. There was a lot of research and trial/error that took place.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#the each, select and max methods were helpful for us to iterate through the content and allow us to get what we need. We found most of the methods early on because we took the time to go over the docs first. I think we still have to take more time to refactor our solution.
