# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Danny Hwang.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of number
# Output: sum of the all the numbers in array
# Steps to solve the problem.
# Recieve an array of numbers
# With each number in the array will add them all up
# Print the result of the sum

# 1. total initial solution

# def total(ary)
#   number = 0
#   ary.each { |i| number += i }
#   number
# end


# 3. total refactored solution

def total(ary)
  number = 0
  ary.each { |i| number += i }
  number
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of String
# Output: Senence from the strings in the array
# Steps to solve the problem.
# make sure all pseudocode is commented out!
# Steps to solve the problem.
#Receive the array
#Combine each element in the array to make a sentence
#display resulting sentence


# 5. sentence_maker initial solution
# def sentence_maker(ary)
#     lastword = ary.pop
#     newword = lastword + "."
#     ary.push(newword)
#     firstword = ary.shift
#     newfirstword = firstword.capitalize
#     ary.unshift(newfirstword)
#     ary.join(" ")
# end


# 6. sentence_maker refactored solution

def sentence_maker(ary)
    lastword = ary.pop
    newlastword = lastword + "."
    ary.push(newlastword)
    firstword = ary.shift
    newfirstword = firstword.capitalize
    ary.unshift(newfirstword)
    ary.join(" ")
end