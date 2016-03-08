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
  array_phrase = phrase.split.each_slice(1).map{|x| p x.join''}.map!{|x| x.reverse}.join(' ')
end

reverse_words(phrase)



# Reflection
# What concepts did you review or learn in this challenge?
# I think it was helpful to think about the solution and psuedocode before tackling an issues.
# After working on JavaScript, I was able to break down an assignment into a lot more smaller task.
# This was helpful to review and appy with ruby.

# What is still confusing to you about Ruby?
# The biggest challenge is to switch back and forth between JavaScript and Ruby.  I also
# choose one of the easier Tuby assignments for this week.  I should take a look at more assignments.

# What are you going to study to get more prepared for Phase 1?
# I think I really need to be more familiar with switching back between Ruby and JavaScript.
# I felt like I Was making some progress with Ruby but once it came time to switch back between
# the two languages I was thrown off and had a difficult time understanding what was going.
# To get more prepared for Phase 1, I will go through some of the reading materials that talks
# about Ruby and JavaScript.  I will also try to work on more examples.