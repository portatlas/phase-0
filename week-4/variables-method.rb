puts "What is your full name?"
fullname = gets

puts "Hello " + fullname + "!"

puts "What is your favorite number?"
favnum = gets
newfavnum = favnum.to_i + 1

puts "How about " + newfavnum.to_s + " it is larger than your favorite number?"