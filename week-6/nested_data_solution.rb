# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}


# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map!  { |element|
#   if element.kind_of?(Integer)
#      p element + 5
#   else element.kind_of?(Array)
#      p element.map! {|inner| p inner + 5}
#   end
# }

# p number_array


# RELEASE 4: Bonus

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! {|element|
 if element.kind_of?(String)
   element + "ly"
 else element.kind_of?(Array)
     element.map! {|inner1|
     if inner1.kind_of?(String)
       inner1 + "ly"
     else inner1.kind_of?(Array)
        inner1.map! {|inner2| inner2 + "ly"}
     end
   }
 end
}
p startup_names

# RELEASE 5: REFACTOR

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map!  { |element|
  if element.kind_of?(Integer)
     element + 5
  else element.kind_of?(Array)
     element.map! {|inner| inner + 5}
  end
}

p number_array



# RELEASE 6: REFLECT

# What are some general rules you can apply to nested arrays?
# When accessing a nested hash, you will have to access all the outer keys until you reach the
# value required. When accessing nested arrays, try to get a good grasp of the size of each of
# the arrays. The commas and parenthesis can be a bit hard to look at when there are a bunch
# a lot of them. Since Ruby is  not now whitespace sensitive, you can reformat the data
# so it is easier to visualize.

# What are some ways you can iterate over nested arrays?
# You can iterate over nested arrays with the map method. However, you would need an if/else
# statement to parse through the data types.  So if there is another array nested in the array,
# you will want to parse out the outer arrays elements be it "strings", integers etc. Then
# parse out the array and the contents in the array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option
# I learned how to use the kind_of? method which was useful when parsing through the data types.
# Additionally, I learned to use iterate over a nested data structure.