# Analyze the Errors

# I worked on this challenge by myself.

# I spent 1.2 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file errors.rb.
# 2. What is the line number where the error occurs?
# Ruby throws an error on line 171. It looks like it is expecting an end.
# 3. What is the type of error message?
# This appears to be a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpretter is expecting an end to be included in the file.
# 5. Where is the error in the code?
# The error can be resolved by adding an end on line 18 and indenting the end on line 17.
# 6. Why did the interpreter give you this error?
# Ruby requires an end to be included for the while loop as well as the method.

# --- error -------------------------------------------------------

south_park = "A TV Show"

# 1. What is the line number where the error occurs?
# The error occurs on line 36.
# 2. What is the type of error message?
# south_park was not defined as a local variable or a method. Ruby does is not able to identify what it is.
# 3. What additional information does the interpreter provide about this type of error?
# Ruby is throwing an error sayig there is an object name error.
# 4. Where is the error in the code?
# The error in the code is line 36 as the code should further elaborate what south_park is. I resolved this issue by making south_park a local varable and assigning the string "A TV Show" to it.
# 5. Why did the interpreter give you this error?
# The intepreter gave me this error because south_park was left undefined.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# The error occured in line 51.
# 2. What is the type of error message?
# The error is due to an undefined method.
# 3. What additional information does the interpreter provide about this type of error?
# Ruby threw an error saying
# 4. Where is the error in the code?
# The error can be resolved by defining the method cartman and adding an en to line 52.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because a method needs to be defined or else ruby will not know how to handle it.

# --- error -------------------------------------------------------

def cartmans_phrase(string)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error is in line 67
# 2. What is the type of error message?
# The error is due to no arguments parenthesis after the method name.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that there is wrong number of arguments.
# 4. Where is the error in the code?
# The error can be resolved by adding an open and close parenthesis after the method name and including a parameter for the method..
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because a method would require a parenthesis and atleast one parameter.

# --- error -------------------------------------------------------

offensive_message = "Real guitars are for old people"

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says(offensive_message)

# 1. What is the line number where the error occurs?
# The error was in line 86.
# 2. What is the type of error message?
# There were wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter also threw an error in line 90.
# 4. Where is the error in the code?
# The code can be resolved by defining the parameter offensive_message. In line 86 I assigned the string to offensive message. I also passed in the parameter offensive_message when the method was called.
# 5. Why did the interpreter give you this error?
# The interpreter did not know what the parameter was referring to.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Cartman')

# 1. What is the line number where the error occurs?
# The error is in line 109.
# 2. What is the type of error message?
# There appears to be a wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
# The error thrown expected 2 arguments but in line 113 only one argument was passed.
# 4. Where is the error in the code?
# The error is in line 113, as there was only one argument passed. The issue can be resolved by passing the second name argument.
# 5. Why did the interpreter give you this error?
# The intepreter gave this error because the method was expecting two parameters but only one was passed. The issue was fixed by adding a second parameter when the method cartmans_lie was called.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error is in line 128.
# 2. What is the type of error message?
# The error type was due to a string not being able to be manipulated by a number.
# 3. What additional information does the interpreter provide about this type of error?
# The additional information is this is a data type error.
# 4. Where is the error in the code?
# The error is in line 128, it is not possible to multiply a number by a string. To resolve this issue, the code was changed to multiply the string 5 times.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because of a mismatch in data type. It is not possible to multiple a number with a string.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# The error was in line 143.
# 2. What is the type of error message?
# The error message type was divided by 0 is not possible.
# 3. What additional information does the interpreter provide about this type of error?
# the additional information was a zero division error.
# 4. Where is the error in the code?
# The error occured when the code attempted to divide 20 by 0. The issue was resolved by dividing 20 by 2.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because the answer is undefined.

# --- error -------------------------------------------------------

require_relative = "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error is in line 159.
# 2. What is the type of error message?
# The error type is that it is not possible to load the file.
# 3. What additional information does the interpreter provide about this type of error?
# The additional information provided appears to be a load error.
# 4. Where is the error in the code?
# The error is in line 159 as there isn't an equal sign between the variable and the string.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#The error where the error line was at the end of the file but the issue was because the end was not included in the while loop was the most tricky to figure it out. I think having the line error there was a bit misleading. In any case this is something I should make note of and be aware.

#How did you figure out what the issue with the error was?
#I went through the code block that to see if there was anything wrong. I noticed that an end was missing and that corresponding with the error message thrown so that was how I figured it out.

#Were you able to determine why each error message happened based on the code?
# I was able to figure out most of the issues; however, when I was trying to resolve the issue. Some of them seemed open as there were a few ways to fix it, so I just fixed the issue to move to the next error.

#When you encounter errors in your future code, what process will you follow to help you debug?
#I will try to get an understanding of what the issue is from the error message, research if needed, and troubleshoot the code.