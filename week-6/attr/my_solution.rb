#Attr Methods

# I worked on this challenge myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: a name
# Output: a greeting salutation with the name
# Steps:
# 1. Define the name in a class
# 2. In the greeting intialize the name class
# 2. Pass the name data to a method with the greeting and disply

class NameData
  def return_name
    @name = "Andrew Vathanakamsang"
  end
end


class Greetings
  def initialize
     @namedata = NameData.new
  end

  def salute
      puts @namedata.return_name + ", What's up?"
  end
end

what = Greetings.new
what.salute



# Reflection
# Release 1
# What are these methods doing?
# The first initialize method runs automatically and sets the instance
# variables age, name and occupation to the provided value.
# The method print_info puts strings of an empty line, followed by a string
# age and the placehoder for the instance age. It is also do the same thing
# name and occupation.  The method what_is_age is calling the instance
# variable age. The method change_my_age= is a method that takes a parameter
# and sets the instance varaible of age to the paramater that was passed.
# The method what_is_name and change_my_name= and what_is_occupation and
# change_my_occupation= is similar in structure to what_is_age and # change_my_age= except that are for different instance variables.

# How are they modifying or returning the value of instance variables?
# The code is modifying the instance variables in line 71, when the method
# change_my_age is called.  The instance variable is also changed in line
# 72 and 73.  The instance variables are returned in line 55, 59, 63.

# Release 2
# What changed between the last release and this release?
# In the second release, there is an attribute reader method on line 5 for the symbol :age.  Additionally, the method what_is_age has been removed from release 2.

# What was replaced?
# The attribute reader for :age replaced the method for what_is_age.

# Is this code simpler than the last?
# This change replaced 3 lines of code with one which makes it simpler.

# Release 3
# What changed between the last release and this release?
# The attribute writer method was added to the symbol :age, and the method to
# to change_my_age was removed as well.

# What was replaced?
# The attribute writer replaced the method change_my_age.

# Is this code simpler than the last?
# Yes this change is a lot more simpler than release 2. It removed another 3 # lines of code with just one line.


# Release 6: Reflect

# What is a reader method?
# A reader method allows the class to access these attributes but not make
# any changes to the attributes.

# What is a writer method?
# A writer method allows the class to make changes to these attributes.

# What do the attr methods do for you?
# attr methods allows programmers to store and change attributes of the class
# without creating methods for doing them. This makes it easier for someone
# reviewing the code and is also a much more streamlined approach.

# Should you always use an accessor to cover your bases? Why or why not?
# Using accessors would make your code easier to read and more streamline.
# Based on my understanding thus far, we would want to use accessors where possible
# however, there may be instances where creating instance variables and
# methods maybe useful.

# What is confusing to you about these methods?
# Thus far sending these messages across methods have been straightforward.
# I would be curious to see how they may work in a more complicated situation.