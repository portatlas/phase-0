# Your Names
# 1) Sean Norton
# 2) Andrew Vathanakamsang

# We spent 2 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
 menu = {"cookie" => 1, "cake" => 5, "pie" => 7}

 #throws error if the item to make is not in the menu
 unless menu.has_key?(item_to_make)
  raise ArgumentError.new("#{item_to_make} is not a valid input")
 end

 #determine the number of ingredients needed and if there will be any leftover ingredients
 serving_size = menu[item_to_make]
 leftover = num_of_ingredients % serving_size

 #evaluate how many items can be made, if there any any leftovers, aswell as potential items to make
 if num_of_ingredients % serving_size == 0
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
 else
     extra_items = Hash.new
     extra_items = menu.select{|k,v| v <= leftover}.keys.flatten[0]
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{leftover} leftover ingredients. Suggested baking items: #{leftover} #{extra_items}"
 end
end

p serving_size_calc("pie", 20)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned about the approaches to refactoring from our guide. It is really
important to understand and question why the code is written a certain
way to refactor effectively. There are instances where I was accepting
the code as it is with out really thinking about what it is doing
and if there is a better way to accomplish it. Additionally, I learned
a new trick to test while refactoring by running the code. Taking the out
put of the code in the terminal, and setting that output to the method call, and running the code again. If Ruby returns true then the refactored solution
works.

Did you learn any new methods? What did you learn about them?
I learned about the method values_at. This was an interesting way to access
a hash. I also learn to use the unless statement and the ! can be placed
before a statement to negate the code.

What did you learn about accessing data in hashes?
I learned a new method called keys to get access to the keys of a hash.
Additionally, I learned the method values_at which might be useful for
other task.

What concepts were solidified when working through this challenge?
It was helpful to get tips from someone who was more experienced with
refactoring. I'll try to implement some of these tips in future assignments.
=end
