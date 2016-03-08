# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# 1. Take string and convert to array
# 2. Iterate through the array and reverse each element in the array
# 3. Once all items have been passed
# 4. Convert array back into string.



# Initial Solution
phrase = "Ich bin ein Berliner"



# def reverse_words(phrase)
#   array_phrase = phrase.split.each_slice(1).map{|x|x.join ''}
#   rev_array = array_phrase.map!{|x| x.reverse}
#   p rev_array.join(' ')
# end

# reverse_words(phrase)




# Refactored Solution

def reverse_words(phrase)
  array_phrase = phrase.split.each_slice(1).map{|x| p x.join''}
  p array_phrase
  # rev_array = array_phrase.map!{|x| x.reverse}
  # p rev_array.join(' ')
end

reverse_words(phrase)



# Reflection