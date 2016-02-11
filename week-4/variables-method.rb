#4.3.1 Return a Formatted Address
# https://github.com/portatlas/phase-0/blob/master/week-4/address/my_solution.rb

#4.3.2 Defining Math Methods
#https://github.com/portatlas/phase-0/blob/master/week-4/math/my_solution.rb



puts "What is your full name?"
fullname = gets

puts "Hello " + fullname + "!"

puts "What is your favorite number?"
favnum = gets3
newfavnum = favnum.to_i + 1

puts "How about " + newfavnum.to_s + " it is larger than your favorite number?"

# How do you define a local variable?
#

=begin
1. How do you define a method?
A method can be thought of as a mechanism that allows you to do something with the code.

2. What is the difference between a local variable and a method?
A local variable allows you to assign a value to a particular variable. A method can
be thought of as a mechanism that allows you to do something with the code. A method
  can take an input parameter and manipulate them to provide some output. A method
  can use variables and a local variable can be referenced in a method.

3. How do you run a ruby program from the command line?
You run a ruby program from the command line by navigating to the directory that
stores the ruby file. Enter the command "ruby" followed by the file name with extension "rb".

4. How do you run an RSpec file from the command line?
To run an RSpec file navigate to the directory that stores the Rspec file and the ruby file. In the terminal run the command rspec followed by the rspec file name.

5. What was confusing about this material? What made sense?
Initially, I was running into some issues running the rspec file because I was not
familiar with the errors. After getting use to reading the error message it
became easier. I also had some issues recalling the ruby syntax but it slowly
came back after a few more exercises.

end
