# Simple Substrings

# I worked on this challenge myself.


# Your Solution Below
puts "What is your address?"
address = gets.chomp

def welcome(address)
  if address.include? "CA"
    p "Welcome to California"
  else
    p "You should move to California"
  end
end

welcome(address)