# Shortest String

# I worked on this challenge myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
list_of_words = ['things', 'small', 'sr', 'long']


def shortest_string(list_of_words)
  # Your code goes here!
  puts sorted_array = list_of_words.sort_by{|string| string.length}
    p sorted_array[0]
end

puts shortest_string(list_of_words)