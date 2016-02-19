# psuedocode
# get a list of students in the cohort
# make the list accessible by ruby
# parse the list into a data structure that can be used and manipulated by ruby
# group each student into a group of 5
# display that group

#initial solution

# require 'csv'

# cohort = CSV.read('cohort.csv')

# def acct_group_maker(cohort)
  # num_students = cohort.size
  # num_groups = num_students/5
  # puts "There are #{num_students} students in Rock Doves"
  # puts "There will be #{num_groups} groups with an average of 5 students"
#   # p num_groups
#   group1 = Array.new

#   cohort_array = cohort.flatten.shuffle
#   counter = 5
#   until counter == 0
#     student = cohort_array.pop
#     group1 << student
#     counter -=1
#   end
#   p group1
# end

# acct_group_maker(cohort)

# the initial solution did not work as well as expected because it only created one group, I could have continued to make it so it created all eleven groups but I realized this wasn't efficient. I remember using the each_slice and that turned out to be a lot easier to implement.

#refactor solution

require 'csv'

cohort = CSV.read('cohort.csv')

def acct_group_maker(cohort)
  cohort_array = cohort.flatten.shuffle
  cohort_array.each_slice(5){|a| p a}
end

acct_group_maker(cohort) #Driver code

#reflect
# What was the most interesting and most difficult part of this challenge?
# The most interesting part of this challenge was to use real data and try to get ruby to access the data.  The most difficult part of this challenge was experimenting with the different data structures and iterating over them. Originally I wanted to create a hash with the key being the name and the value being the group number but I went with another direction.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I think I can still improve in how I break down the problem. A lot of times I am thinking about how a person would solve this problem. I think I will write better psuedocode if I can think how ruby would solve the problem.

# Was your approach for automating this task a good solution? What could have made it even better?
# The final solution is a workable solution. However, to make it better I think each time I run it it should retain the same members.

# What data structure did you decide to store the accountability groups in and why?
# I decided to use an array because I could apply the each_slice method which made life a lot easier.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I got to implement the flatten method which is a first for me. I learn better when I can apply it as opposed to reading the theory off a doc. Additionally, I used the each_slice method which I deployed in my earlier solution as well. I also learned how to import a CSV file into Ruby which is new.



